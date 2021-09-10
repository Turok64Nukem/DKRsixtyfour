#ifndef _ULTRA64_LIBAUDIO_H_
#define _ULTRA64_LIBAUDIO_H_

#ifdef _LANGUAGE_C_PLUS_PLUS
extern "C" {
#endif

#include "ultratypes.h"
#include "mbi.h"
#include "abi.h"
    
/***********************************************************************
 * misc defines
 ***********************************************************************/    
#ifndef _EMULATOR
#	ifdef AUD_PROFILE

#define PROFILE_AUD(num, cnt, max, min)	\
{					\
    u32 currCnt = osGetCount();	\
    currCnt -= lastCnt[cnt_index];	\
    cnt_index--;			\
    cnt += currCnt;			\
    num++;				\
             				\
    if ( currCnt > max ) max = currCnt;	\
    if ( currCnt < min ) min = currCnt;	\
}

#	endif /* AUD_PROFILE */
#endif /* EMULATOR */

#ifndef NULL
#define NULL 0
#endif

#define AL_FX_BUFFER_SIZE       8192
#define AL_FRAME_INIT           -1
#define AL_USEC_PER_FRAME       16000
#define AL_MAX_PRIORITY         127
#define AL_GAIN_CHANGE_TIME     1000    
    
typedef s32     ALMicroTime;
typedef u8      ALPan;

#define AL_PAN_CENTER   64
#define AL_PAN_LEFT     0
#define AL_PAN_RIGHT    127
#define AL_VOL_FULL     127
#define AL_KEY_MIN      0
#define AL_KEY_MAX      127
#define AL_DEFAULT_FXMIX	0
#define AL_SUSTAIN      63

/***********************************************************************
 * Error handling
 ***********************************************************************/

#ifdef _DEBUG
#define ALFailIf(condition, error)	\
            if (condition) {		\
                __osError(error, 0);	\
                return; }

#else
#define ALFailIf(condition, error)	\
            if (condition) {		\
                return; }
#endif

#ifdef _DEBUG
#define ALFlagFailIf(condition, flag, error)	\
            if (condition) {		\
                if(flag) __osError(error, 0);	\
                return; }

#else
#define ALFlagFailIf(condition, flag, error)	\
            if (condition) {		\
                return; }
#endif

/***********************************************************************
 * Audio Library global routines
 ***********************************************************************/
typedef struct ALLink_s {
    struct ALLink_s      *next;
    struct ALLink_s      *prev;
} ALLink;


typedef s32 (*ALDMAproc)(s32 addr, s32 len, void *state);
typedef ALDMAproc (*ALDMANew)(void *state);


typedef struct {
    u8          *base;
    u8          *cur;
    s32         len;
    s32         count;
} ALHeap;

#define AL_HEAP_DEBUG   1
#define AL_HEAP_MAGIC   0x20736a73
#define AL_HEAP_INIT    0


#ifdef _DEBUG
#define alHeapAlloc(hp, elem ,size) alHeapDBAlloc((u8 *) __FILE__,__LINE__,(hp),(elem),(size))
#else
#define alHeapAlloc(hp, elem ,size) alHeapDBAlloc(0, 0,(hp),(elem),(size))
#endif

/***********************************************************************
 * FX Stuff
 ***********************************************************************/
#define    AL_FX_NONE          0
#define    AL_FX_SMALLROOM     1
#define    AL_FX_BIGROOM       2
#define    AL_FX_CHORUS        3
#define    AL_FX_FLANGE        4
#define    AL_FX_ECHO          5
#define    AL_FX_CUSTOM        6

typedef u8      ALFxId;
typedef void    *ALFxRef;

/***********************************************************************
 * data structures for sound banks
 ***********************************************************************/

#define AL_BANK_VERSION    0x4231	/* 'B1' */

/* Possible wavetable types */
enum    {AL_ADPCM_WAVE = 0,
         AL_RAW16_WAVE};

typedef struct {
    s32 order;
    s32 npredictors;
    s16 book[1];        /* Actually variable size. Must be 8-byte aligned */
} ALADPCMBook;

typedef struct {
    u32         start;
    u32         end;
    u32         count;
    ADPCM_STATE state;
} ALADPCMloop;

typedef struct {
    u32         start;
    u32         end;
    u32         count;
} ALRawLoop;

typedef struct {
    ALMicroTime attackTime;
    ALMicroTime decayTime;
    ALMicroTime releaseTime;
    u8          attackVolume;
    u8          decayVolume;
} ALEnvelope;

typedef struct {
    u8          velocityMin;
    u8          velocityMax;
    u8          keyMin;
    u8          keyMax;
    u8          keyBase;
    s8          detune;
} ALKeyMap;

typedef struct {
    ALADPCMloop *loop;
    ALADPCMBook *book;
} ALADPCMWaveInfo;

typedef struct {
    ALRawLoop *loop;
} ALRAWWaveInfo;

typedef struct ALWaveTable_s {
    u8          *base;          /* ptr to start of wave data    */
    s32         len;            /* length of data in bytes      */
    u8          type;           /* compression type             */
    u8          flags;          /* offset/address flags         */
    union {
        ALADPCMWaveInfo adpcmWave;
        ALRAWWaveInfo   rawWave;
    } waveInfo;
} ALWaveTable;

typedef struct ALSound_s {
    ALEnvelope  *envelope;
    ALKeyMap    *keyMap;
    ALWaveTable *wavetable;     /* offset to wavetable struct           */
    ALPan       samplePan;
    u8          sampleVolume;
    u8          flags;
} ALSound;

typedef struct {
    u8          volume;         /* overall volume for this instrument   */
    ALPan       pan;            /* 0 = hard left, 127 = hard right      */
    u8          priority;       /* voice priority for this instrument   */
    u8          flags;
    u8          tremType;       /* the type of tremelo osc. to use      */
    u8          tremRate;       /* the rate of the tremelo osc.         */
    u8          tremDepth;      /* the depth of the tremelo osc         */
    u8          tremDelay;      /* the delay for the tremelo osc        */
    u8          vibType;        /* the type of tremelo osc. to use      */
    u8          vibRate;        /* the rate of the tremelo osc.         */
    u8          vibDepth;       /* the depth of the tremelo osc         */
    u8          vibDelay;       /* the delay for the tremelo osc        */
    s16         bendRange;      /* pitch bend range in cents            */
    s16         soundCount;     /* number of sounds in this array       */
    ALSound     *soundArray[1];
} ALInstrument;

typedef struct ALBank_s {
    s16                 instCount;      /* number of programs in this bank */
    u8                  flags;
    u8                  pad;
    s32                 sampleRate;     /* e.g. 44100, 22050, etc...       */
    ALInstrument        *percussion;    /* default percussion for GM       */
    ALInstrument        *instArray[1];  /* ARRAY of instruments            */
} ALBank;

typedef struct {                /* Note: sizeof won't be correct        */
    s16         revision;       /* format revision of this file         */
    s16         bankCount;      /* number of banks                      */
    ALBank      *bankArray[1];  /* ARRAY of bank offsets                */
} ALBankFile;


/***********************************************************************
 * Sequence Files
 ***********************************************************************/
#define AL_SEQBANK_VERSION    'S1'

typedef struct {
    u8          *offset;
    s32         len;
} ALSeqData;

typedef struct {                /* Note: sizeof won't be correct        */
    s16         revision;       /* format revision of this file         */
    s16         seqCount;       /* number of sequences                  */
    ALSeqData   seqArray[1];    /* ARRAY of sequence info               */
} ALSeqFile;


/***********************************************************************
 * Synthesis driver stuff
 ***********************************************************************/
typedef ALMicroTime (*ALVoiceHandler)(void *);

typedef struct {
    s32                 maxVVoices;     /* obsolete */
    s32                 maxPVoices;
    s32                 maxUpdates;
    s32                 maxFXbusses;
    void                *dmaproc;
    ALHeap              *heap;
    s32                 outputRate;     /* output sample rate */
    ALFxId              fxType[2];
    s32                 *params;
} ALSynConfig;

typedef struct ALPlayer_s {
    struct ALPlayer_s   *next;
    void                *clientData;    /* storage for client callback  */
    ALVoiceHandler      handler;        /* voice handler for player     */
    ALMicroTime         callTime;       /* usec requested callback      */
    s32                 samplesLeft;    /* usec remaining to callback   */
} ALPlayer;

typedef struct ALVoice_s {
    ALLink              node;
    struct PVoice_s     *pvoice;
    ALWaveTable         *table;
    void                *clientPrivate;
    s16                 state;
    s16                 priority;
    s16                 fxBus;
    s16                 unityPitch;
} ALVoice;

typedef struct ALVoiceConfig_s {
    s16                 priority;       /* voice priority               */
    s16                 fxBus;          /* bus assignment               */
    u8                  unityPitch;     /* unity pitch flag             */
} ALVoiceConfig;

typedef struct {
    ALPlayer    *head;          /* client list head                     */
    ALLink      pFreeList;      /* list of free physical voices         */
    ALLink      pAllocList;     /* list of allocated physical voices    */
    ALLink      pLameList;      /* list of voices ready to be freed     */
    s32         paramSamples;
    s32         curSamples;     /* samples from start of game           */
    ALDMANew    dma;
    ALHeap      *heap;
    
    struct ALParam_s    *paramList;
    
    struct ALMainBus_s  *mainBus;
    struct ALAuxBus_s   *auxBus;        /* ptr to array of aux bus structs */
    struct ALFilter_s   *outputFilter;  /* last filter in the filter chain */

    s32                 numPVoices;
    s32                 maxAuxBusses;
    s32                 outputRate;     /* output sample rate */
    s32                 maxOutSamples;  /* Maximum samples rsp can generate
                                           at one time at output rate */
} ALSynth;


/***********************************************************************
 * Audio Library (AL) stuff
 ***********************************************************************/
typedef struct {
    ALSynth     drvr;
} ALGlobals;

extern ALGlobals *alGlobals;

/***********************************************************************
 * Sequence Player stuff
 ***********************************************************************/

/*
 * Play states
 */
#define AL_STOPPED      0
#define AL_PLAYING      1
#define AL_STOPPING     2

#define AL_DEFAULT_PRIORITY     5
#define AL_DEFAULT_VOICE        0
#define AL_MAX_CHANNELS         16

/*
 * Audio Library event type definitions
 */
enum ALMsg {
    AL_SEQ_REF_EVT,	/* Reference to a pending event in the sequence. */
    AL_SEQ_MIDI_EVT,
    AL_SEQP_MIDI_EVT,
    AL_TEMPO_EVT,
    AL_SEQ_END_EVT,
    AL_NOTE_END_EVT,
    AL_SEQP_ENV_EVT,
    AL_SEQP_META_EVT,
    AL_SEQP_PROG_EVT,
    AL_SEQP_API_EVT,
    AL_SEQP_VOL_EVT,
    AL_SEQP_LOOP_EVT,
    AL_SEQP_PRIORITY_EVT,
    AL_SEQP_SEQ_EVT,
    AL_SEQP_BANK_EVT,
    AL_SEQP_PLAY_EVT,
    AL_SEQP_STOP_EVT,
    AL_SEQP_STOPPING_EVT,
    AL_TRACK_END,
    AL_CSP_LOOPSTART,
    AL_CSP_LOOPEND,
    AL_CSP_NOTEOFF_EVT,
    AL_TREM_OSC_EVT,
    AL_VIB_OSC_EVT
};

/*
 * Midi event definitions
 */
#define AL_EVTQ_END     0x7fffffff

enum AL_MIDIstatus {
    /* For distinguishing channel number from status */
    AL_MIDI_ChannelMask         = 0x0F,
    AL_MIDI_StatusMask          = 0xF0,

    /* Channel voice messages */
    AL_MIDI_ChannelVoice        = 0x80,
    AL_MIDI_NoteOff             = 0x80,
    AL_MIDI_NoteOn              = 0x90,
    AL_MIDI_PolyKeyPressure     = 0xA0,
    AL_MIDI_ControlChange       = 0xB0,
    AL_MIDI_ChannelModeSelect   = 0xB0,
    AL_MIDI_ProgramChange       = 0xC0,
    AL_MIDI_ChannelPressure     = 0xD0,
    AL_MIDI_PitchBendChange     = 0xE0,

    /* System messages */
    AL_MIDI_SysEx               = 0xF0, /* System Exclusive */

    /* System common */
    AL_MIDI_SystemCommon            = 0xF1,
    AL_MIDI_TimeCodeQuarterFrame    = 0xF1,
    AL_MIDI_SongPositionPointer     = 0xF2,
    AL_MIDI_SongSelect              = 0xF3,
    AL_MIDI_Undefined1              = 0xF4,
    AL_MIDI_Undefined2              = 0xF5,
    AL_MIDI_TuneRequest             = 0xF6,
    AL_MIDI_EOX                     = 0xF7, /* End of System Exclusive */

    /* System real time */
    AL_MIDI_SystemRealTime  = 0xF8,
    AL_MIDI_TimingClock     = 0xF8,
    AL_MIDI_Undefined3      = 0xF9,
    AL_MIDI_Start           = 0xFA,
    AL_MIDI_Continue        = 0xFB,
    AL_MIDI_Stop            = 0xFC,
    AL_MIDI_Undefined4      = 0xFD,
    AL_MIDI_ActiveSensing   = 0xFE,
    AL_MIDI_SystemReset     = 0xFF,
    AL_MIDI_Meta            = 0xFF      /* MIDI Files only */
};

enum AL_MIDIctrl {
    AL_MIDI_VOLUME_CTRL         = 0x07,
    AL_MIDI_PAN_CTRL            = 0x0A,
    AL_MIDI_PRIORITY_CTRL       = 0x10, /* use general purpose controller for priority */
    AL_MIDI_FX_CTRL_0           = 0x14,
    AL_MIDI_FX_CTRL_1           = 0x15,
    AL_MIDI_FX_CTRL_2           = 0x16,
    AL_MIDI_FX_CTRL_3           = 0x17,
    AL_MIDI_FX_CTRL_4           = 0x18,
    AL_MIDI_FX_CTRL_5           = 0x19,
    AL_MIDI_FX_CTRL_6           = 0x1A,
    AL_MIDI_FX_CTRL_7           = 0x1B,
    AL_MIDI_FX_CTRL_8           = 0x1C,
    AL_MIDI_FX_CTRL_9           = 0x1D,
    AL_MIDI_SUSTAIN_CTRL        = 0x40,
    AL_MIDI_FX1_CTRL            = 0x5B,
    AL_MIDI_FX3_CTRL            = 0x5D
};

enum AL_MIDImeta {
    AL_MIDI_META_TEMPO          = 0x51,
    AL_MIDI_META_EOT            = 0x2f
};


#define AL_CMIDI_BLOCK_CODE           0xFE
#define AL_CMIDI_LOOPSTART_CODE       0x2E
#define AL_CMIDI_LOOPEND_CODE         0x2D
#define AL_CMIDI_CNTRL_LOOPSTART      102
#define AL_CMIDI_CNTRL_LOOPEND        103
#define AL_CMIDI_CNTRL_LOOPCOUNT_SM   104
#define AL_CMIDI_CNTRL_LOOPCOUNT_BIG  105

typedef struct {
    u8          *curPtr;                /* ptr to the next event */
    s32         lastTicks;              /* sequence clock ticks (used by alSeqSetLoc) */
    s32	       	curTicks;		/* sequence clock ticks of next event (used by loop end test) */
    s16         lastStatus;             /* the last status msg */
} ALSeqMarker;

typedef struct {
    s32         ticks;    /* MIDI, Tempo and End events must start with ticks */
    u8          status;
    u8          byte1; 
    u8          byte2;
    u32         duration;
} ALMIDIEvent;

typedef struct {
    s32         ticks;
    u8          status;
    u8          type;
    u8          len;
    u8          byte1;
    u8          byte2;
    u8          byte3;
} ALTempoEvent;

typedef struct {
    s32         ticks;
    u8          status;
    u8          type;
    u8          len;
} ALEndEvent;

typedef struct {
    struct ALVoice_s    *voice;
} ALNoteEvent;

typedef struct {
    struct ALVoice_s    *voice;
    ALMicroTime         delta;
    u8                  vol;
} ALVolumeEvent;

typedef struct {
    s16                 vol;
} ALSeqpVolEvent;

typedef struct {
    ALSeqMarker         *start;
    ALSeqMarker         *end;
    s32                 count;
} ALSeqpLoopEvent;

typedef struct {
    u8			chan;
    u8			priority;
} ALSeqpPriorityEvent;

typedef struct {
    void		*seq;	/* pointer to a seq (could be an ALSeq or an ALCSeq). */
} ALSeqpSeqEvent;

typedef struct {
    ALBank		*bank;
} ALSeqpBankEvent;

typedef struct {
    struct ALVoiceState_s      *vs;
    void                       *oscState;
    u8                         chan;
} ALOscEvent;

typedef struct {
    s16                 	type;
    union {
        ALMIDIEvent     	midi;
        ALTempoEvent    	tempo;
        ALEndEvent      	end;
        ALNoteEvent     	note;
        ALVolumeEvent   	vol;
        ALSeqpLoopEvent 	loop;
        ALSeqpVolEvent  	spvol;
        ALSeqpPriorityEvent	sppriority;
        ALSeqpSeqEvent		spseq;
        ALSeqpBankEvent		spbank;
        ALOscEvent      	osc;
    } msg;
} ALEvent;

typedef struct {
    ALLink      node;
    ALMicroTime delta;
    ALEvent     evt;
} ALEventListItem;

typedef struct {
    ALLink      freeList;
    ALLink      allocList;
    s32         eventCount;
} ALEventQueue;


#define AL_PHASE_ATTACK         0
#define AL_PHASE_NOTEON         0
#define AL_PHASE_DECAY          1
#define AL_PHASE_SUSTAIN        2
#define AL_PHASE_RELEASE        3
#define AL_PHASE_SUSTREL        4

typedef struct ALVoiceState_s {
    struct ALVoiceState_s *next;/* MUST be first                */
    ALVoice     voice;
    ALSound     *sound;
    ALMicroTime envEndTime;     /* time of envelope segment end */
    f32         pitch;          /* currect pitch ratio          */
    f32         vibrato;        /* current value of the vibrato */
    u8          envGain;        /* current envelope gain        */
    u8          channel;        /* channel assignment           */
    u8          key;            /* note on key number           */
    u8          velocity;       /* note on velocity             */
    u8          envPhase;       /* what envelope phase          */
    u8          phase;
    u8          tremelo;        /* current value of the tremelo */
    u8          flags;          /* bit 0 tremelo flag
                                   bit 1 vibrato flag           */
} ALVoiceState;

typedef struct {
    ALInstrument        *instrument;    /* instrument assigned to this chan */
    s16                 bendRange;      /* pitch bend range in cents        */
    ALFxId              fxId;           /* type of fx assigned to this chan */
    ALPan               pan;            /* overall pan for this chan        */
    u8                  priority;       /* priority for this chan           */
    u8                  vol;            /* current volume for this chan     */
    u8                  fxmix;          /* current fx mix for this chan     */
    u8                  sustain;        /* current sustain pedal state      */
    f32                 pitchBend;      /* current pitch bend val in cents  */
} ALChanState;

// Can't just replace the original with this, because alCSPGetChlVol won't match.
typedef struct {
    ALInstrument        *instrument;    /* instrument assigned to this chan */
    s16                 bendRange;      /* pitch bend range in cents        */
    ALFxId              fxId;           /* type of fx assigned to this chan */
    ALPan               pan;            /* overall pan for this chan        */
    u8                  priority;       /* priority for this chan           */
    u8                  vol;            /* current volume for this chan     */
    u8                  fxmix;          /* current fx mix for this chan     */
    u8                  sustain;        /* current sustain pedal state      */
    f32                 pitchBend;      /* current pitch bend val in cents  */
    u8                  unk10;
} ALChanState_Custom;

typedef struct ALSeq_s {
    u8          *base;                  /* ptr to start of sequence file   */
    u8          *trackStart;            /* ptr to first MIDI event         */
    u8          *curPtr;                /* ptr to next event to read       */
    s32         lastTicks;              /* MIDI ticks for last event       */
    s32         len;                    /* length of sequence in bytes     */
    f32         qnpt;                   /* qrter notes / tick (1/division) */
    s16         division;               /* ticks per quarter note          */
    s16         lastStatus;             /* for running status              */
} ALSeq;

typedef struct {
    u32      trackOffset[16];
    u32      division;
} ALCMidiHdr;

typedef struct ALCSeq_s {
    ALCMidiHdr    *base;             /* ptr to start of sequence file         */
    u32           validTracks;       /* set of flags, showing valid tracks    */
    f32           qnpt;              /* qrter notes / tick (1/division)       */
    u32           lastTicks;         /* keep track of ticks incase app wants  */
    u32           lastDeltaTicks;    /* number of delta ticks of last event   */
    u32		  deltaFlag;	     /* flag: set if delta's not subtracted   */
    u8            *curLoc[16];       /* ptr to current track location,        */
                                     /* may point to next event, or may point */
                                     /* to a backup code                      */
    u8            *curBUPtr[16];     /* ptr to next event if in backup mode   */
    u8            curBULen[16];      /* if > 0, then in backup mode           */
    u8            lastStatus[16];    /* for running status                    */
    u32           evtDeltaTicks[16]; /* delta time to next event              */
} ALCSeq;

typedef struct {
    u32         validTracks;
    s32         lastTicks;
    u32         lastDeltaTicks;
    u8          *curLoc[16];
    u8          *curBUPtr[16];
    u8          curBULen[16];
    u8          lastStatus[16];
    u32         evtDeltaTicks[16];
} ALCSeqMarker;

#define NO_SOUND_ERR_MASK          0x01
#define NOTE_OFF_ERR_MASK          0x02
#define NO_VOICE_ERR_MASK          0x04

typedef struct {
    s32         maxVoices;         /* max number of voices to alloc    */
    s32         maxEvents;         /* max internal events to support   */
    u8          maxChannels;       /* max MIDI channels to support (16)*/
    u8          debugFlags;        /* control which error get reported */
    ALHeap      *heap;             /* ptr to initialized heap          */
    u8          unknown_0x10;
    void        *initOsc;
    void        *updateOsc;
    void        *stopOsc;
} ALSeqpConfig;

typedef ALMicroTime   (*ALOscInit)(void **oscState,f32 *initVal, u8 oscType,
                                   u8 oscRate, u8 oscDepth, u8 oscDelay);
typedef ALMicroTime   (*ALOscUpdate)(void *oscState, f32 *updateVal);
typedef void          (*ALOscStop)(void *oscState);

typedef struct {
    ALPlayer            node;           /* note: must be first in structure */
    ALSynth             *drvr;          /* reference to the client driver   */
    ALSeq               *target;        /* current sequence                 */
    ALMicroTime         curTime;
    ALBank              *bank;          /* current ALBank                   */
    s32                 uspt;           /* microseconds per tick            */
    s32                 nextDelta;      /* microseconds to next callback    */
    s32                 state;
    u16                 chanMask;       /* active channels                  */
    s16                 vol;            /* overall sequence volume          */
    u8                  maxChannels;    /* number of MIDI channels          */
    u8                  debugFlags;     /* control which error get reported */
    ALEvent             nextEvent;
    ALEventQueue        evtq;
    ALMicroTime         frameTime;
    ALChanState         *chanState;     /* 16 channels for MIDI             */
    ALVoiceState        *vAllocHead;    /* list head for allocated voices   */
    ALVoiceState        *vAllocTail;    /* list tail for allocated voices   */
    ALVoiceState        *vFreeList;     /* list of free voice state structs */
    u8                  unk70;
    u8                  unk71;
    u8                  unk72; // Might just be padding?
    u8                  unk73; // Might just be padding?
    ALOscInit           initOsc;
    ALOscUpdate         updateOsc;
    ALOscStop           stopOsc;
    ALSeqMarker         *loopStart;
    ALSeqMarker         *loopEnd;
    s32                 loopCount;      /* -1 = loop forever, 0 = no loop   */
} ALSeqPlayer;

typedef struct {
    ALPlayer            node;           /* note: must be first in structure */
    ALSynth             *drvr;          /* reference to the client driver   */
    ALCSeq              *target;        /* current sequence                 */
    ALMicroTime         curTime;
    ALBank              *bank;          /* current ALBank                   */
    s32                 uspt;           /* microseconds per tick            */
    s32                 nextDelta;      /* microseconds to next callback    */
    s32                 state;
    u16                 chanMask;       /* active channels                  */
    s16                 vol;            /* overall sequence volume          */
    u8                  maxChannels;    /* number of MIDI channels          */
    u8                  debugFlags;     /* control which error get reported */
    ALEvent             nextEvent;
    ALEventQueue        evtq;
    ALMicroTime         frameTime;
    ALChanState         *chanState;     /* 16 channels for MIDI             */
    ALVoiceState        *vAllocHead;    /* list head for allocated voices   */
    ALVoiceState        *vAllocTail;    /* list tail for allocated voices   */
    ALVoiceState        *vFreeList;     /* list of free voice state structs */
    ALOscInit           initOsc;
    ALOscUpdate         updateOsc;
    ALOscStop           stopOsc;
    s32                 unk7C;
} ALCSPlayer;

/* Maintain backwards compatibility with old routine names. */
#define alSeqpSetProgram		alSeqpSetChlProgram
#define alSeqpGetProgram		alSeqpGetChlProgram
#define alSeqpSetFXMix			alSeqpSetChlFXMix
#define alSeqpGetFXMix			alSeqpGetChlFXMix
#define alSeqpSetPan			alSeqpSetChlPan
#define	alSeqpGetPan			alSeqpGetChlPan
#define alSeqpSetChannelPriority	alSeqpSetChlPriority
#define alSeqpGetChannelPriority	alSeqpGetChlPriority



/* Maintain backwards compatibility with old routine names. */
#define alCSPSetProgram		alCSPSetChlProgram
#define alCSPGetProgram		alCSPGetChlProgram
#define alCSPSetFXMix		alCSPSetChlFXMix
#define alCSPGetFXMix		alCSPGetChlFXMix
#define alCSPSetPan		alCSPSetChlPan
#define	alCSPGetPan		alCSPGetChlPan
#define alCSPSetChannelPriority	alCSPSetChlPriority
#define alCSPGetChannelPriority	alCSPGetChlPriority



/***********************************************************************
 * Sound Player stuff
 ***********************************************************************/

typedef struct {
    s32         maxSounds;
    s32         maxEvents;
    ALHeap      *heap;
} ALSndpConfig;

typedef struct {
    ALPlayer            node;           /* note: must be first in structure */
    ALEventQueue        evtq;
    ALEvent             nextEvent;
    ALSynth             *drvr;          /* reference to the client driver   */
    s32                 target;
    void                *sndState;
    s32                 maxSounds;
    ALMicroTime         frameTime;
    ALMicroTime         nextDelta;      /* microseconds to next callback    */
    ALMicroTime         curTime;
} ALSndPlayer;

typedef s16   ALSndId;
    

#endif
