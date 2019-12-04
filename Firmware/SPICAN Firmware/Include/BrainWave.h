typedef struct ADCDataStruct
{
	Uint32	SampleIndex;
	float32	ThisADCReading;
	float32 ADCMinusBrain;
	boolean CanTakeData;
} ADCDataStruct;

typedef struct AveragesStruct
{
	Uint32	Sample;
	float32 CurrentAverage;
	float32 BrainScalar;
} AveragesStruct;

void BrainWaveStateMachine (void);
void PlaybackEEG (void);
void StoreADCNow (void);
void FindMax (void);
void DumpEEG (void);
void DumpEEG1 (void);
void DumpEEG2 (void);
void DumpAverages (void);
