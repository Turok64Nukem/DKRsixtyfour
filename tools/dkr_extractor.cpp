#include <iostream>
#include <fstream>
#include <sstream>
#include <iomanip>
#include <string>
#include <vector>
#include "dkr_extractor_classes/extract_config.h"
#include "dkr_extractor_classes/rom.h"
#include "dkr_decompressor_src/DKRCompression.h"
#include "n64graphics/n64graphics.h"

// C++17
#include <experimental/filesystem> 
namespace fs = std::experimental::filesystem;

const std::string CONFIG_EXTENSION = ".extract-config";

const std::string ROM_EXTENSIONS[3] = { ".z64", ".v64", ".n64" };

std::string outDirectory;
DKRCompression compression;
int numberOfFilesExtracted;

#define TEX_FORMAT_RGBA32 0
#define TEX_FORMAT_RGBA16 1
#define TEX_FORMAT_I8     2
#define TEX_FORMAT_I4     3
#define TEX_FORMAT_IA16   4
#define TEX_FORMAT_IA8    5
#define TEX_FORMAT_IA4    6
#define TEX_FORMAT_CI4    7

#define TEX_HEADER_SIZE 0x20

/*********************************************/

void show_help() {
    std::cout << "Usage: ./dkr_extractor <configs_directory> <baseroms_directory> <out_directory>" << std::endl;
}

bool ends_with_extension(std::string filename, std::string extension) {
    return std::equal(extension.rbegin(), extension.rend(), filename.rbegin());
}

bool ends_with_config_extension(std::string filename) {
    return ends_with_extension(filename, CONFIG_EXTENSION);
}

bool ends_with_rom_extension(std::string filename) {
    for (const std::string romExtension : ROM_EXTENSIONS) {
        if(ends_with_extension(filename, romExtension)) {
            return true;
        }
    }
    return false;
}

void to_lowercase(std::string& input) {
    for(char& character : input) {
        character = std::tolower(character);
    }
}

/*********************************************/

void write_binary_file(std::vector<uint8_t>& data, std::string& filename) {
    std::ofstream wf(filename.c_str(), std::ios::out | std::ios::binary);
    for(int i = 0; i < data.size(); i++)
        wf.write((char *)&data[i], 1);
    wf.close();
}

void extract_binary(std::vector<uint8_t>& data, int startOffset, int endOffset, std::string& name, std::string& subfolder, std::string& outFolder) {
    // std::cout << "Extracting Binary! " << startHex << std::endl;
    std::stringstream hexStream, rangeStream, filenameStream;
    
    hexStream << std::setfill('0') << std::setw(6) << std::hex << std::uppercase << startOffset;
    std::string startHex = hexStream.str();
    
    rangeStream << startHex << "-" << std::setfill('0') << std::setw(6) << std::hex << std::uppercase << endOffset;
    std::string rangeHex = rangeStream.str();
    
    to_lowercase(startHex);
    
    std::string outputDirectory = outDirectory + "/assets/" + subfolder + "/" + outFolder;
    if(!fs::is_directory(outputDirectory)) {
        fs::create_directories(outputDirectory);
    }
    
    filenameStream << outputDirectory << "/" << name << "." << startHex << ".bin";
    std::string filename = filenameStream.str();
    
    // Make sure the file is 16-byte aligned.
    while(data.size() % 16 != 0) {
        data.push_back(0);
    }
    
    write_binary_file(data, filename);
    
    std::cout << "Extracted " << rangeHex << " as /" << outFolder << "/" << name << "." << startHex << ".bin" << std::endl;
}

void extract_compressed(std::vector<uint8_t>& data, int startOffset, int endOffset, std::string& name, std::string& subfolder, std::string& outFolder) {
    // Needed padding to prevent errors with decompressing.
    if(data[data.size() - 1] != 0) {
        data.push_back(0);
        data.push_back(0);
        data.push_back(0);
        data.push_back(0);
    }
    data = compression.decompressBuffer(data);
    extract_binary(data, startOffset, endOffset, name, subfolder, outFolder);
}

int get_texture_size(int width, int height, int textureFormat) {
    switch(textureFormat) {
        case TEX_FORMAT_RGBA32:
            return (width * height * 4) + TEX_HEADER_SIZE;
        case TEX_FORMAT_RGBA16:
        case TEX_FORMAT_IA16:
            return (width * height * 2) + TEX_HEADER_SIZE;
        case TEX_FORMAT_I8:
        case TEX_FORMAT_IA8:
            return (width * height) + TEX_HEADER_SIZE;
        case TEX_FORMAT_I4:
        case TEX_FORMAT_IA4:
            return (width * height / 2) + TEX_HEADER_SIZE;
        case TEX_FORMAT_CI4:
            std::cout << "Error: CI4 texture format is not currently supported." << std::endl;
            throw 1;
    }
    
    std::cout << "Error: Invalid texture format " << textureFormat << std::endl;
    throw 1;
}

std::string get_header_string(std::vector<uint8_t>& header) {
    std::stringstream headerBytesStream;
    headerBytesStream << std::hex << std::uppercase
        << std::setfill('0')
        << std::setw(1) << (int)((int)header[0x02] >> 4)
        << std::setw(2) << (int)header[0x03]
        << std::setw(2) << (int)header[0x04]
        << std::setw(2) << (int)header[0x06] 
        << std::setw(2) << (int)header[0x07]
        << std::setw(2) << (int)header[0x15];
    return headerBytesStream.str();
}

void deinterlace(std::vector<uint8_t>& data, int width, int height, int bitDepth, int bufferSize) {
    uint8_t* temp = new uint8_t[bufferSize];
    
    int numPixels;
    if(bitDepth == 4) {
        numPixels = ((width * height) / 2);
    } else {
        numPixels = (width * height * (bitDepth / 8));
    }
    
    int stride = bufferSize * 2;
    
    int size = numPixels / stride;
    
    for(int i = 0; i < size; i++) {
        int row;
        if(bitDepth == 4) {
            row = (i * stride) / width * 2;
        } else {
            row = (i * stride) / width / (bitDepth / 8);
        }
        if(row % 2 == 0) continue;
        for(int j = 0; j < bufferSize; j++) {
            temp[j] = data[i * stride + j];
            data[i * stride + j] = data[i * stride + j + bufferSize];
            data[i * stride + j + bufferSize] = temp[j];
        }
    }
    
    delete[] temp;
}

void flip_vertically(std::vector<uint8_t>& data, int width, int height, int bitDepth) {
    int rowSize;
    if(bitDepth == 4) {
        rowSize = width / 2;
    } else {
        rowSize = width * (bitDepth / 8);
    }
    
    uint8_t temp = 0;
    
    for(int y = 0; y < height/2; y++) {
        for(int x = 0; x < rowSize; x++) {
            temp = data[y * rowSize + x];
            data[y * rowSize + x] = data[(height - y - 1) * rowSize + x];
            data[(height - y - 1) * rowSize + x] = temp;
        }
    }
}

void extract_single_texture(std::vector<uint8_t>& header, std::vector<uint8_t>& data, int index, int startOffset, int endOffset, 
    std::string& name, std::string& subfolder, std::string& outFolder, bool isCompressed, bool shouldFlip) {
    std::stringstream hexStream, rangeStream, filenameStream;
    
    hexStream << std::setfill('0') << std::setw(6) << std::hex << std::uppercase << startOffset;
    std::string startHex = hexStream.str();
    
    rangeStream << startHex << "-" << std::setfill('0') << std::setw(6) << std::hex << std::uppercase << endOffset;
    std::string rangeHex = rangeStream.str();
    
    to_lowercase(startHex);
    
    std::string outputDirectory = outDirectory + "/assets/" + subfolder + "/" + outFolder;
    if(!fs::is_directory(outputDirectory)) {
        fs::create_directories(outputDirectory);
    }
    
    int width = header[0];
    int height = header[1];
    bool isInterlaced = ((header[0x06] & 0x04) == 0x04);
    bool computeSizeInHeader = !(header[0x16] == 0x00 && header[0x17] == 0x00);
    int textureFormat = header[0x02] & 0xF;
    
    int textureSize = get_texture_size(width, height, textureFormat);
    
    filenameStream << name << '.' << startHex 
        << "." << index << "." 
        << (isCompressed ? "C" : "U") 
        << (shouldFlip ? "F" : "N") 
        << (computeSizeInHeader ? "S" : "Z")
        << "." << get_header_string(header);
    
    std::string filename;
    
    switch(textureFormat) {
        case TEX_FORMAT_RGBA32:
        {
            filenameStream << ".rgba32.png";
            filename = filenameStream.str();
            if(isInterlaced) deinterlace(data, width, height, 32, 8);
            if(shouldFlip) flip_vertically(data, width, height, 32);
            rgba2png((outputDirectory + "/" + filename).c_str(), (const rgba*)&data[0], width, height);
            break;
        }
        case TEX_FORMAT_RGBA16:
        {
            filenameStream << ".rgba16.png";
            filename = filenameStream.str();
            if(isInterlaced) deinterlace(data, width, height, 16, 4);
            if(shouldFlip) flip_vertically(data, width, height, 16);
            rgba* outTex = raw2rgba(&data[0], width, height, 16);
            rgba2png((outputDirectory + "/" + filename).c_str(), outTex, width, height);
            break;
        }
        case TEX_FORMAT_I8:
        {
            filenameStream << ".i8.png";
            filename = filenameStream.str();
            if(isInterlaced) deinterlace(data, width, height, 8, 4);
            if(shouldFlip) flip_vertically(data, width, height, 8);
            ia* outTex = raw2i(&data[0], width, height, 8);
            ia2png((outputDirectory + "/" + filename).c_str(), outTex, width, height);
            break;
        }
        case TEX_FORMAT_I4:
        {
            filenameStream << ".i4.png";
            filename = filenameStream.str();
            if(isInterlaced) deinterlace(data, width, height, 4, 4);
            if(shouldFlip) flip_vertically(data, width, height, 4);
            ia* outTex = raw2i(&data[0], width, height, 4);
            ia2png((outputDirectory + "/" + filename).c_str(), outTex, width, height);
            break;
        }
        case TEX_FORMAT_IA16:
        {
            filenameStream << ".ia16.png";
            filename = filenameStream.str();
            if(isInterlaced) deinterlace(data, width, height, 16, 4);
            if(shouldFlip) flip_vertically(data, width, height, 16);
            ia* outTex = raw2ia(&data[0], width, height, 16);
            ia2png((outputDirectory + "/" + filename).c_str(), outTex, width, height);
            break;
        }
        case TEX_FORMAT_IA8:
        {
            filenameStream << ".ia8.png";
            filename = filenameStream.str();
            if(isInterlaced) deinterlace(data, width, height, 8, 4);
            if(shouldFlip) flip_vertically(data, width, height, 8);
            ia* outTex = raw2ia(&data[0], width, height, 8);
            ia2png((outputDirectory + "/" + filename).c_str(), outTex, width, height);
            break;
        }
        case TEX_FORMAT_IA4:
        {
            filenameStream << ".ia4.png";
            filename = filenameStream.str();
            if(isInterlaced) deinterlace(data, width, height, 4, 4);
            if(shouldFlip) flip_vertically(data, width, height, 4);
            ia* outTex = raw2ia(&data[0], width, height, 4);
            ia2png((outputDirectory + "/" + filename).c_str(), outTex, width, height);
            break;
        }
        case TEX_FORMAT_CI4:
        {
            // filename += ".ci4.png";
            std::cout << "Error: CI4 texture format is not currently supported." << std::endl;
            throw 1;
        }
        default: // Invalid texture format
        {
            std::cout << "Error: Unknown texture format " << textureFormat << std::endl;
            throw 1;
        }
    }
    
    std::cout << "Extracted " << rangeHex << " as /" << outFolder << "/" << filename << std::endl;
}

void extract_texture(ROM& rom, int startOffset, int endOffset, std::string& name, std::string& subfolder, std::string& outFolder, bool shouldFlip) {
    
    std::vector<uint8_t> header = rom.get_bytes_from_range(startOffset, TEX_HEADER_SIZE);
    std::vector<uint8_t> data;
    
    bool isCompressed = (header[0x1D] == 0x01);
    if(isCompressed) {
        std::vector<uint8_t> compressedData = rom.get_bytes_from_range(startOffset + TEX_HEADER_SIZE, endOffset - startOffset - TEX_HEADER_SIZE);
        // Needed padding to prevent errors with decompressing.
        if(compressedData[compressedData.size() - 1] != 0) {
            compressedData.push_back(0);
            compressedData.push_back(0);
            compressedData.push_back(0);
            compressedData.push_back(0);
        }
        data = compression.decompressBuffer(compressedData);
    } else {
        data = rom.get_bytes_from_range(startOffset, endOffset - startOffset);
    }
    
    int numTextures = header[0x12];
    int dataOffset = 0;
    
    for(int i = 0; i < numTextures; i++){
        int width = data[dataOffset + 0x00];
        int height = data[dataOffset + 0x01];
        int textureFormat = data[dataOffset + 0x02] & 0xF;
        int textureSize = get_texture_size(width, height, textureFormat);
        
        std::vector<uint8_t> texHeader(data.begin() + dataOffset, data.begin() + dataOffset + TEX_HEADER_SIZE);
        std::vector<uint8_t> texData(data.begin() + dataOffset + TEX_HEADER_SIZE, data.begin() + dataOffset + textureSize);
        
        extract_single_texture(texHeader, texData, i, startOffset, endOffset, name, subfolder, outFolder, isCompressed, shouldFlip);
        dataOffset += textureSize;
    }
}

void extract_range(std::string subfolder, ConfigRange& range, ROM& rom) {
    std::string name = range.get_property(1);
    std::string outFolder = range.get_property(2);
    
    int startOffset = range.get_start();
    int endOffset = range.get_start() + range.get_size();
    
    switch(range.get_type()) {
        case ConfigRangeType::BINARY:
        {
            std::vector<uint8_t> data = rom.get_bytes_from_range(startOffset, range.get_size());
            extract_binary(data, startOffset, endOffset, name, subfolder, outFolder);
            numberOfFilesExtracted++;
            break;
        }
        case ConfigRangeType::COMPRESSED:
        {
            std::vector<uint8_t> data = rom.get_bytes_from_range(startOffset, range.get_size());
            extract_compressed(data, startOffset, endOffset, name, subfolder, outFolder);
            numberOfFilesExtracted++;
            break;
        }
        case ConfigRangeType::TEXTURE:
        {
            std::string flip_verticallyString = range.get_property(3);
            to_lowercase(flip_verticallyString);
            bool shouldFlip = (flip_verticallyString == "flipvertically");
            extract_texture(rom, startOffset, endOffset, name, subfolder, outFolder, shouldFlip);
            numberOfFilesExtracted++;
            break;
        }
    }
}

void extract_assets_from_rom(Config& config, ROM& rom) {
    if(config.get_size() != rom.get_size()) {
        std::cout << "Error: Config does not add up to the ROM size." << std::endl 
            << std::hex << "ROM size is " << rom.get_size() 
            << "; Config ends at " << config.get_size() << std::dec << std::endl;
    }
    
    numberOfFilesExtracted = 0;
    int numRanges = config.get_number_of_ranges();
    for (int i = 0; i < numRanges; i++) {
        ConfigRange range = config.get_range(i);
        extract_range(config.get_subfolder(), range, rom);
    }
}

/*********************************************/

int main(int argc, char* argv[]) {
    
    if(argc != 4) {
        show_help();
        return 1;
    }
    
    std::string configsDirectory = argv[1];
    std::string baseromsDirectory = argv[2];
    outDirectory = argv[3];
    
    std::vector<Config> configs;
    std::vector<ROM> roms;
    
    for (const auto & entry : fs::directory_iterator(configsDirectory)){
        std::string filename = entry.path().filename();
        if(ends_with_config_extension(filename)) {
            configs.push_back(Config(configsDirectory, filename));
        }
    }
    
    for (const auto & entry : fs::directory_iterator(baseromsDirectory)){
        std::string filename = entry.path().string();
        if(ends_with_rom_extension(filename)) {
            roms.push_back(ROM(filename));
        }
    }
    
    for(auto& config : configs) {
        if(config.is_supported()) {
            for(auto& rom : roms) {
                if(rom.get_md5() == config.get_md5()) {
                    std::cout << "Found ROM file for config \"" << config.get_name() << "\"" << std::endl;
                    extract_assets_from_rom(config, rom);
                    std::cout << "Finished extracting " << numberOfFilesExtracted << " files." << std::endl;
                    break;
                }
            }
        } else {
            std::cout << "This version of the game is currently not supported." << std::endl;
        }
    }
    
    return 0;
}