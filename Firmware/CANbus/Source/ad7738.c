#include "DSP281x_Device.h"

#include "ad7738.h"
#include "spi.h"
#include "mcbsp.h"
#include "data.h"
#include "extio.h"
#include "lcd.h"
#include "qep.h"
#include "diskio.h"
#include "dl.h"
#include "led.h"
#include "motor.h"

#define ADCREG_COMM	0x00			// (W)   Communications
#define ADCREG_IOPORT	0x01			// (R/W) I/O Port
#define ADCREG_IOPORT_R	0x41
#define ADCREG_REV	0x42			// (R)   Revision
#define ADCREG_TEST	0x03			// (R/W) Test
#define ADCREG_TEST_R	0x43
#define ADCREG_ADCST	0x44			// (R)   ADC Status
#define ADCREG_CHKSUM	0x05			// (R/W) Checksum
#define ADCREG_CHKSUM_R	0x45
#define ADCREG_ZSCAL	0x06			// (R/W) ADC ZS Calibration
#define ADCREG_ZSCAL_R	0x46
#define ADCREG_FSCAL	0x07			// (R/W) ADC FS Calibration
#define ADCREG_FSCAL_R	0x47
#define ADCREG_DATA	0x48			// (R)   0x08 - 0x0f channel data
#define ADCREG_CHZS	0x10			// (R/W) 0x10 - 0x17 channel zs
#define ADCREG_CHZS_R	0x50
#define ADCREG_CHFS	0x18			// (R/W) 0x18 - 0x1f channel fs
#define ADCREG_CHFS_R	0x58
#define ADCREG_CHST	0x60			// (R)   0x20 - 0x27 channel status
#define ADCREG_CHSET	0x28			// (R/W) 0x28 - 0x2f channel setup
#define ADCREG_CHSET_R	0x68
#define ADCREG_CHCTM	0x30			// (R/W) 0x30 - 0x37 channel conversion time
#define ADCREG_CHCTM_R	0x70
#define ADCREG_MODE	0x38			// (R/W) 0x38 - 0x3f mode
#define ADCREG_MODE_R	0x78

#define CHIPTYPE	0x03
#define PRODID		0x04
#define INTERFACE	0x14
#define POWERCLK	0x15
#define DIGFILT		0x19
#define SYNCRST		0x1D
#define ADCDATA		0x2C
#define ADCSTAUS	0x2D
#define ADCDIAG		0x2E

#define ADCREAD		0x40

//#define DIGIN		*(volatile int *)0x200E
#define DIGIN		((*(unsigned int*)0x2000)&0x1)


// Usefull Timer Operations:
//
// Start Timer:
#define StartCpuTimer0()	CpuTimer0Regs.TCR.bit.TSS = 0
// Stop Timer:
#define StopCpuTimer0()		CpuTimer0Regs.TCR.bit.TSS = 1
// Reload Timer With period Value:
#define ReloadCpuTimer0()	CpuTimer0Regs.TCR.bit.TRB = 1
// Read 32-Bit Timer Value:
#define ReadCpuTimer0Counter()	CpuTimer0Regs.TIM.all
// Read 32-Bit Period Value:
#define ReadCpuTimer0Period()	CpuTimer0Regs.PRD.all

#pragma CODE_SECTION(cpu_timer0_isr, "secureRamFuncs")
interrupt void cpu_timer0_isr();
#pragma CODE_SECTION(cpu_xint1_isr, "secureRamFuncs")
interrupt void cpu_xint1_isr();

float scaleData(long in, int i);
void scaleStoredData(void);

#define DATASIZE BUFFSIZE
#pragma DATA_SECTION(databuf, "bigbuffer")
long databuf[DATASIZE];
long dataindex = 0;
int dataCollectTrigger = 0;
//#pragma DATA_SECTION(scaledDataBuf, "bigbuffer")
//float scaledDataBuf[DATASIZE];

int speedSensor=0;
int speedSensorPolarity = 0;
int numSpeedSensorsToUse = 1;

#pragma DATA_SECTION(mafbuf, "bigbuffer")

// variables for moving avarage processing
long mafbuf[CHS_MAX][MAF_MAX];		// buffer for the last active set of data
long long mafsum[CHS_MAX];			// sum of active set of data
long mafdiff[CHS_MAX];		// store diff of the oldest and the current samples
Uint16 mafidx[CHS_MAX];			// the next position of buffer to fill/replace
Uint16 mafsize[CHS_MAX];			// the current size of the sum
volatile long adcdiff;					// filter window

long enccnt[ENC_MAX];				// in memory encoder count
// variables for velocity calculation
//long velpbuf[ENC_MAX][VEL_MAX];			// buffer for the last active set of position
//long veldbuf[ENC_MAX][VEL_MAX];			// buffer for the last active set of difference
//long veldsum[ENC_MAX];				// difference sum
//Uint16 velidx;					// index

Uint16 ad7738_rev[2];				// store the chip rev word for both AD7738

Uint16 ad7738_ph;				// adc phase, 0=channel a, and 1= channel b

int ad7738_err[CHS_MAX];	// error detected in ad7738, no conversion or no ref

adccnt_t ad7738_cnt;				// current data
adccnt_t ad7738_raw;				// raw count for calibration
int rawrdy;					// raw data ready

adcwt_t ad7738_load;				// cnt converted to load
adcwt_t ad7738_mon;				// monitor load for lcd display
int monrdy;					// monitor data ready

adcwt_t ad7738_tare;				// tare value
Uint16 tare_reset;				// tare flag, bitmap

adcwt_t ad7738_peak;				// peak load
Uint16 peak_reset;				// peak reset flag
adcwt_t ad7738_vall;				// valley load
Uint16 vall_reset;				// valley reset flag

adcwt_t slope[PNT_MAX - 1];			// cal slope
adcwt_t intercept[PNT_MAX - 1];			// cal intercept

adcwt_t dacs;					// dac slope
adccnt_t daci;					// dac intercept
int dacsetvolt;					// dac mode. 1=set volt, 0=follow load
Uint16 dacvalue;				// for DAC out value

Uint16 limit[CHS_MAX];				// limit config
int limitchgd[CHS_MAX];				// limit status has changed

int mon_cnt = 0;				// sample counts for monitor data

int tempcnt = 0;				// sample count for tempearture reading
int tempstart = 0;				// flag to start temperature conversion
int tempread = 0;				// flag to read temperature
adcwt_t hfactor;				// temperature compensation factor

int tagscnt = 0;				// sample count for tag id detecting
int tagsdetect = 0;				// flag to detect tag id

long numfastinterrupts = 0;
long numslowinterrupts = 0;
int fastslowDataState = 0;
long dropTime[2];

float triggerVal = 1.0;
long triggerValADC = 0;
int triggerSource = 2;

extern int motorJog;
extern int motorJogDir;

int getspeedSens() {
	return speedSensor;
}

//---------------------------------------------------------------------------
// InitCpuTimers: 
//---------------------------------------------------------------------------
// This function initializes CPU timers 0 to a known state.
//
void InitCpuTimer0() {

	// Interrupts that are used in this example are re-mapped to
	// ISR functions found within this file.
	EALLOW;
	PieVectTable.TINT0 = &cpu_timer0_isr;
	EDIS;

	// Initialize timer period to maximum:
	CpuTimer0Regs.PRD.all = 0xFFFFFFFF;

	// Initialize pre-scale counter to divide by 1 (SYSCLKOUT):
	CpuTimer0Regs.TPR.all = 0;
	CpuTimer0Regs.TPRH.all = 0;

	// Make sure timer is stopped:
	CpuTimer0Regs.TCR.bit.TSS = 1;

	// Reload all counter register with period value:
	CpuTimer0Regs.TCR.bit.TRB = 1;

	// Enable CPU INT1 which is connected to CPU-Timer 0:
	IER |= M_INT1;

	// Enable TINT0 in the PIE: Group 1 interrupt 7
	PieCtrlRegs.PIEIER1.bit.INTx7 = 1;
}

//---------------------------------------------------------------------------
// ConfigCpuTimer: 
//---------------------------------------------------------------------------
// This function initializes the timer0 to the period specified
// by the "Freq" and "Period" parameters. The "Freq" is entered as "MHz"
// and the period in "uSeconds". The timer is held in the stopped state
// after configuration.
//
void ConfigCpuTimer0(float Freq, float Period) {

	// Initialize timer period:
	CpuTimer0Regs.PRD.all = (long) (Freq * Period);

	// Set pre-scale counter to divide by 1 (SYSCLKOUT):
	CpuTimer0Regs.TPR.all = 0;
	CpuTimer0Regs.TPRH.all = 0;

	// Initialize timer control register:
	CpuTimer0Regs.TCR.bit.TSS = 1;	// 1 = Stop timer, 0 = Start/Restart Timer
	CpuTimer0Regs.TCR.bit.TRB = 1;	// 1 = reload timer
	CpuTimer0Regs.TCR.bit.SOFT = 1;
	CpuTimer0Regs.TCR.bit.FREE = 1;	// Timer Free Run
	CpuTimer0Regs.TCR.bit.TIE = 1;	// 0 = Disable / 1 = Enable Timer Interrupt

}

int get_maf_size(int ch) {
	return mafidx[ch];
}

int get_numSensors() {
	return numSpeedSensorsToUse;
}

void set_numSensors(int num) {
	numSpeedSensorsToUse = num;
}

// rest the moving average buffs, disable interrupt in calling place
void maf_rst() {
	int i, j;

	for (i = 0; i < CHS_MAX; i++) {
		for (j = 0; j < MAF_MAX; j++) {
			mafbuf[i][j] = 0;
		}
		mafsum[i] = 0;
		mafidx[i] = 0;
		mafsize[i] = 0;
	}
}

// rest the velcity filter buffs, disable interrupt in calling place
void velf_rst() {
	int i;

	for (i = 0; i < ENC_MAX; i++) {
		enccnt[i] = 0;
	}
}

int getStartStop(void) {
	return fastslowDataState;
}

void toggleFastDataCollect(int startstop) {
	long k;
	if (startstop == 1) {
		// enable fast interrupt, disable slow interrupt
		for (k = 0; k < DATASIZE; k++) {
			databuf[k] = 0;
		}
		prod_init();
		dataCollectTrigger = 0;
		numfastinterrupts = 0;
		fastslowDataState = 1;
		dataindex = 0;
		led_set( LED2, LED_RED);				// set red led as state indicator
		PieCtrlRegs.PIEIER1.bit.INTx4 = 1;		// enable fast interrupt
		PieCtrlRegs.PIEIER1.bit.INTx7 = 0;		// disable slow interrupt

		ssr_set(0, 1);							// release magnet to drop sample
	} else if (startstop == 0) {
		// disable fast interrupt, enable slow interrupt
		fastslowDataState = 0;

		PieCtrlRegs.PIEIER1.bit.INTx7 = 1;		// enable slow interrupt
		PieCtrlRegs.PIEIER1.bit.INTx4 = 0;		// disable fast interrupt

		led_set( LED2, LED_OFF);				// turn off red led as state indicator
		ssr_set(0, 0);							// reengage magnet
		scaleStoredData();						// convert raw adc data -> scaled data
	}
}

// init the ad 7738 chips and also the timer0
void ad7738_init() {

	int i;
	volatile int chip;
	volatile int prodid;
	volatile int inter;
	volatile int pwr;

	spi_init();					// SPI init
	mcbsp_init();				// the other SPI
	qep_init();

	// Setup AD7768-1

	chip = xpi_xmit2(CHIPTYPE + ADCREAD, 0x00);
	prodid = xpi_xmit2(PRODID + ADCREAD, 0x00);
	inter = xpi_xmit2(INTERFACE + ADCREAD, 0x00);
	pwr = xpi_xmit2(POWERCLK, 0x23);					// run at 128ksps
	pwr = xpi_xmit2(POWERCLK + ADCREAD, 0x00);

	maf_rst();					// reset the moving average filter
	prod_init();
	velf_rst();

	mon_cnt = 0;					// sample counts for monitor data
	tempcnt = 0;					// sample count for tempearture reading
	tempstart = 0;				// flag to start temperature conversion
	tempread = 0;					// flag to read temperature

	tagscnt = 0;
	tagsdetect = 0;

	rawrdy = 0;
	monrdy = 0;

	tare_reset = 0;				// tare flag
	peak_reset = BM_ALL;
	vall_reset = BM_ALL;

	for (i = 0; i < CHS_MAX; i++) {

		hfactor.adw[i] = 1;				// reset heat factors
		ad7738_tare.adw[i] = 0;			// reset the tare value
		ad7738_peak.adw[i] = 0;
		ad7738_vall.adw[i] = 0;

		ad7738_err[i] = 0;
	}

	for (i = 0; i < ENC_MAX; i++) {

		hfactor.pos[i] = 1;				// reset heat factors
		ad7738_tare.pos[i] = 0;			// reset the tare value
		ad7738_peak.pos[i] = 0;
		ad7738_vall.pos[i] = 0;

		hfactor.vel[i] = 1;				// reset heat factors
		ad7738_tare.vel[i] = 0;			// reset the tare value
		ad7738_peak.vel[i] = 0;
		ad7738_vall.vel[i] = 0;
	}
	speedSensorPolarity = 1;

	// Interrupts that are used in this example are re-mapped to
	// ISR functions found within this file.
	EALLOW;
	PieVectTable.TINT0 = &cpu_timer0_isr;
	PieVectTable.XINT1 = &cpu_xint1_isr;
	EDIS;

	InitCpuTimer0();				// initialize the CpuTimer0
	ConfigCpuTimer0(150, 1000);		// Configure CpuTimer0 to 1khz

	XIntruptRegs.XINT1CR.bit.ENABLE = 1;
	XIntruptRegs.XINT1CR.bit.POLARITY = 0;	// XINT1 on rising edge

	IER |= M_INT1;			// Enable CPU INT1 which is connected to CpuTimer0

//	PieCtrlRegs.PIEIER1.bit.INTx4 = 1;		// Group 1.4 xint1 (see http://www.ti.com/lit/ug/spru078g/spru078g.pdf pg 123)
	PieCtrlRegs.PIEIER1.bit.INTx7 = 1;// Enable TINT0 in the PIE: Group 1 interrupt 7

	StartCpuTimer0();

}

// set dac mode, mode: 0=follow load, 1=set volt
void dac_setmode(int mode) {
	dacsetvolt = mode;
}

// check raw data availablity
int ad7738_rawrdy() {
	return rawrdy;
}

// get adc raw data
adccnt_t* ad7738_getraw() {
	rawrdy = 0;
	return &ad7738_raw;
}

float ad7738_getload() {
	return ad7738_load.adw[0];
}

float ad7738_getpos() {
	return ad7738_load.pos[0];
}

float ad7738_getDropTime(int k) {
	float ret;
	if(dataCollectTrigger == 1) {
		//ret =  ((float)(dropTime[1]-dropTime[0]))*0.0000078125; // time difference sampled at 128khz
		ret = ((float)(dropTime[k]))*0.0000078125;
	}

	else
		ret = 0.0;

	return ret;
}

// check monitor data availablity
int ad7738_monrdy() {
	return monrdy;
}

// clear monitor data availablity
void ad7738_monclr() {
	monrdy = 0;
}

// get montor data
adcwt_t* ad7738_getmon() {
	// monrdy = 0;
	return &ad7738_mon;
}

// get peak data
adcwt_t* ad7738_getpeak() {
	return &ad7738_peak;
}

// get peak data
float ad7738_getpeakload() {
	return ad7738_peak.adw[0];
}


// get valley data
adcwt_t* ad7738_getvall() {
	return &ad7738_vall;
}

// get the limit status for the channel
Uint16 ad7738_getlimitst(int ch) {
	if (ch < 0 || ch >= LIM_MAX) {
		return 0;
	}
	limitchgd[ch] = 0;
	return limit[ch];
}

// get whether the limit status has changed
int ad7738_getlimitchgd() {
	//return limitchgd[0] || limitchgd[1] || limitchgd[2] || limitchgd[3];
	return 0;
}

// set change flag
void ad7738_setlimitchgd() {
	limitchgd[0] = 1;
}

// set the peak reset flag
void ad7738_resetpeak(Uint16 bm) {
	peak_reset = bm;
}

// set the vall reset flag
void ad7738_resetvall(Uint16 bm) {
	vall_reset = bm;
}

// set the tare reset flag
void ad7738_resettare(Uint16 bm) {
	tare_reset = bm;
}

// reset limits, ch, channel index, >= LIM_MAX for all
void ad7738_resetlimit(Uint16 ch) {
	int i;
	if (ch < LIM_MAX) {
		if ((limit[ch] & LIM_LA) && (limit[ch] & LIM_ST)) {	// latching and triggered
			limit[ch] &= ~LIM_ST;			// set status bit
			limitchgd[ch] = 1;
			ssr_set(ch, (limit[ch] & LIM_NC));
		}
	} else {
		for (i = 0; i < LIM_MAX; i++) {
			if ((limit[i] & LIM_LA) && (limit[i] & LIM_ST)) {// latching and triggered
				limit[i] &= ~LIM_ST;			// set status bit
				limitchgd[i] = 1;
				ssr_set(i, (limit[i] & LIM_NC));
			}
		}
	}
}

// set the final cal slope and intercept values according to cal parameter in flash
void ad7738_setcal() {
	int i, j;

	// set adc calibration
	for (i = 0; i < CHS_MAX; i++) {
		for (j = 0; j < PNT_MAX - 1; j++) {
			slope[j].adw[i] = conf_data.sensor[conf_data.ch[i].ci].ufactor
					* conf_data.ch[i].bslope
					* conf_data.sensor[conf_data.ch[i].ci].slope[j];
			intercept[j].adw[i] = conf_data.sensor[conf_data.ch[i].ci].ufactor
					* conf_data.sensor[conf_data.ch[i].ci].intercept[j];
		}
	}
	adcdiff = conf_data.diffwin * 0x01000000;

	// position factor
	for (i = 0; i < ENC_MAX; i++) {
		slope[0].pos[i] = 1.0 / (double) conf_data.cntperin[i];
		slope[0].vel[i] = 60.0 * SAMPRATE * slope[0].pos[i]
				/ ((double) conf_data.velfilter * (double) conf_data.velfilter);
	}

	i=0;
	j=0;
	if (conf_data.sensor[conf_data.ch[i].ci].points > 2) {
		while (triggerVal > conf_data.sensor[conf_data.ch[i].ci].mass[j + 1]
				&& j < conf_data.sensor[conf_data.ch[i].ci].points - 2) {
			j++;
		}
	}
	triggerValADC = (triggerVal - intercept[j].adw[i]) / slope[j].adw[i];

#if(0)
	// set limit
//	for (i = 0; i < LIM_MAX; i++) {
//		limit[i] = conf_data.lim[i].limit;
//		limitchgd[i] = 0;
//	}

	// set dac calibration
//	for (i = 0; i < DAC_MAX; i++) {

		//if( VFD_LOAD == conf_data.dac[i].what ||
		//VFD_PEAK == conf_data.dac[i].what ||
		//VFD_VALL == conf_data.dac[i].what )
		//{
		//daci.adc[i] = conf_data.dac[i].dslope * conf_data.sensor[conf_data.ch[conf_data.dac[i].ch].ci].dacoff + conf_data.dac[i].dint;
		//dacs.adw[i] = conf_data.dac[i].dslope * conf_data.sensor[conf_data.ch[conf_data.dac[i].ch].ci].dacgain / conf_data.sensor[conf_data.ch[conf_data.dac[i].ch].ci].ufactor;
		//  daci.adc[i] = conf_data.sensor[conf_data.ch[conf_data.dac[i].ch].ci].dacoff;
		//  dacs.adw[i] = conf_data.sensor[conf_data.ch[conf_data.dac[i].ch].ci].dacgain / conf_data.sensor[conf_data.ch[conf_data.dac[i].ch].ci].ufactor;
		//}
		//else if( VFD_POSI == conf_data.dac[i].what ||
		//     VFD_VELO == conf_data.dac[i].what )
		//{
		// position and velocity
		//daci.adc[i] = conf_data.dac[i].dslope * conf_data.dac[i].offset + conf_data.dac[i].dint;
		//dacs.adw[i] = conf_data.dac[i].dslope * conf_data.dac[i].gain;
//		daci.adc[i] = conf_data.dac[i].offset;
//		dacs.adw[i] = conf_data.dac[i].gain;
		//}
//	}
#endif
}

// check if it is time to start a temperature conversion
int ad7738_tempstart() {
	if (tempstart) {
		tempstart = 0;				// reset flag
		return 1;
	}
	return 0;
}

// check if it is time to read a temperature
int ad7738_tempread() {
	if (tempread) {
		tempread = 0;				// reset flag
		return 1;
	}
	return 0;
}

// check if it is time to try to detect tag id
int ad7738_tagsdetect() {
	if (tagsdetect) {
		tagsdetect = 0;
		return 1;
	}
	return 0;
}

// set the current temperature for temperature compensation
void ad7738_settemp(double tempv) {
	int i;
	adcwt_t hf;

	for (i = 0; i < CHS_MAX; i++) {
		hf.adw[i] = conf_data.ch[i].tcx * tempv * tempv
				+ conf_data.ch[i].tcy * tempv + conf_data.ch[i].tcz;
	}

	DINT;
	memcpy((void*) &hfactor, (void*) &hf, sizeof(adcwt_t));
	EINT;
}

#pragma CODE_SECTION(scaleData, "secureRamFuncs")
float scaleData(long in, int i) {
	int j;
	float out;

	// *** heat correction here ***
	in = in * hfactor.adw[i];

	// *** apply cal scales ***
	j = 0;
	if (conf_data.sensor[conf_data.ch[i].ci].points > 2) {
		while (in > conf_data.sensor[conf_data.ch[i].ci].adc[j + 1]
				&& j < conf_data.sensor[conf_data.ch[i].ci].points - 2) {
			j++;
		}
	}
	out = in * slope[j].adw[i] + intercept[j].adw[i];

	// apply tare
	out -= ad7738_tare.adw[i];

	return out;
}
#pragma CODE_SECTION(scaleStoredData, "secureRamFuncs")
void scaleStoredData(void) {
	long k;

	for (k = 0; k < dataindex; k++) {
		ad7738_load.adw[0] = scaleData(databuf[k], 0);
		ad7738_load.vel[0] = 0.0000078125*((float)k);
		ad7738_load.vel[1] = (float)(databuf[k] & 0x3);
		prod_add(&ad7738_load);
	}
}

// isr for cpu timer0 for adc data read and processing
//
interrupt void cpu_timer0_isr() {

	int i, j;
	long temp;
	int status;
	double limld;

	GpioDataRegs.GPADAT.bit.GPIOA2 = 1;

	// ***** read adc *****
	ad7738_cnt.adc[0] = xpi_adcdataread(ADCDATA + ADCREAD);

	// ***** read the encoders *****
	// channel 1
	enccnt[0] += (int) EvaRegs.T2CNT;	// add the count for the interval
	EvaRegs.T2CNT = 0;					// reset the count

	// channel 2
	enccnt[1] += (int) EvbRegs.T4CNT;	// add the count for the interval
	EvbRegs.T4CNT = 0;					// reset the count

	// convert encoder count to inch
	for (i = 0; i < ENC_MAX; i++) {
		ad7738_load.pos[i] = enccnt[i] * slope[0].pos[i];

		// *** tare here ***
		if (tare_reset & BITMAP[CHS_MAX + i]) {	// new tare value
			tare_reset &= ~BITMAP[CHS_MAX + i];
			ad7738_tare.pos[i] = ad7738_load.pos[i];
			ad7738_load.pos[i] = 0;
		} else {					// apply tare
			ad7738_load.pos[i] -= ad7738_tare.pos[i];
		}
	}

	i = 0;
	// no error on adc reading
	// *** moving average filter ***
	if (conf_data.filter > 1) {
		// first calculate the diff between the oldest and newset
		if (mafsize[i] < conf_data.filter) {	// moving window not full
			if (mafsize[i] > 0) {
				mafdiff[i] = ad7738_cnt.adc[i] - mafbuf[i][0];// diff from current to the first (oldest)
			} else {
				mafdiff[i] = 0;
			}
			mafsize[i]++;				// one more added
		} else {				// moving window full
			mafdiff[i] = ad7738_cnt.adc[i] - mafbuf[i][mafidx[i]];
			mafsum[i] -= mafbuf[i][mafidx[i]];	// remove the oldest point
		}

		if (labs(mafdiff[i]) > adcdiff) {
			mafsum[i] = 0;
			mafidx[i] = 0;
			mafsize[i] = 1;
		}

		mafbuf[i][mafidx[i]] = ad7738_cnt.adc[i];// load the new value to buffer
		mafsum[i] += ad7738_cnt.adc[i];		// add the newest

		ad7738_cnt.adc[i] = mafsum[i] / mafsize[i];		// calculate the average

		mafidx[i]++;				// point to the next cell
		if (mafidx[i] >= conf_data.filter) {
			mafidx[i] = 0;			// loop back
		}
	}

	// *** heat correction here ***
	ad7738_cnt.adc[i] *= hfactor.adw[i];

	// *** keep a copy for raw reading ***
	ad7738_raw.adc[i] = ad7738_cnt.adc[i];

	// *** apply cal scales ***
	j = 0;
	if (conf_data.sensor[conf_data.ch[i].ci].points > 2) {
		while (ad7738_cnt.adc[i]
				> conf_data.sensor[conf_data.ch[i].ci].adc[j + 1]
				&& j < conf_data.sensor[conf_data.ch[i].ci].points - 2) {
			j++;
		}
	}
	ad7738_load.adw[i] = ad7738_cnt.adc[i] * slope[j].adw[i]
			+ intercept[j].adw[i];

	// *** tare here ***
	if (tare_reset & BITMAP[i]) {	// new tare value
		tare_reset &= ~BITMAP[i];
		ad7738_tare.adw[i] = ad7738_load.adw[i];
		ad7738_load.adw[i] = 0;
	} else {				// apply tare
		ad7738_load.adw[i] -= ad7738_tare.adw[i];
	}

	rawrdy = 1;
	speedSensor =  (DIGIN==speedSensorPolarity);

	// *** monitor data check ***
	mon_cnt++;
	if (mon_cnt > MON_RATE) {
		mon_cnt = 0;
		memcpy((void*) &ad7738_mon, (void*) &ad7738_load, sizeof(adcwt_t));
		monrdy = 1;
	}

	autoMotor(ad7738_getpos());
	moveMotor();

#if(0)

	//  ***** read the converted data *****
	if( 0 == ad7738_ph )// phase 0
	{

		// --- chip 1 ---
		if( GpioDataRegs.GPDDAT.bit.GPIOD5 )
		{
			ad7738_err[0] = 1;			// error, not coverting
		}
		else
		{
			GpioDataRegs.GPBCLEAR.bit.GPIOB5 = 1;	// A0CSn low

			// Channel 1A
			ad7738_err[0] = 0;// no error

			spi_xmit( ADCREG_DATA );// send the read command
			status = spi_recv();// read the status byte
			temp = 0;
			for( i = 0; i < 3; i++ )
			{
				temp <<= 8;
				temp |= spi_recv();			// read three bytes (24bits)
			}

			if( 0x0004 & status )			// no ref
			{
				ad7738_err[0] = 1;			// error
			}
			else if( 0x0001 & status )		// over
			{
				if( 0x0002 & status )			// negative
				{
					ad7738_cnt.adc[0] = temp - 0x01800000;
				}
				else					// positive
				{
					ad7738_cnt.adc[0] = temp + 0x00800000;
				}
			}
			else					// normal range
			{
				ad7738_cnt.adc[0] = temp - 0x00800000;
			}
			GpioDataRegs.GPBSET.bit.GPIOB5 = 1;	// A0CSn high
		}

		// --- chip 2 ---
		if( GpioDataRegs.GPDDAT.bit.GPIOD6 )
		{
			ad7738_err[2] = 1;			// error, not coverting
		}
		else
		{
			GpioDataRegs.GPBCLEAR.bit.GPIOB4 = 1;	// A1CSn low

			// Channel 2A
			ad7738_err[2] = 0;// no error
			spi_xmit( ADCREG_DATA );// send the read command
			status = spi_recv();// read the status byte
			temp = 0;
			for( i = 0; i < 3; i++ )
			{
				temp <<= 8;
				temp |= spi_recv();			// read three bytes (24bits)
			}

			if( 0x0004 & status )			// no ref
			{
				ad7738_err[2] = 1;			// error
			}
			else if( 0x0001 & status )		// over
			{
				if( 0x0002 & status )			// negative
				{
					ad7738_cnt.adc[2] = temp - 0x01800000;
				}
				else					// positive
				{
					ad7738_cnt.adc[2] = temp + 0x00800000;
				}
			}
			else					// normal range
			{
				ad7738_cnt.adc[2] = temp - 0x00800000;
			}

			GpioDataRegs.GPBSET.bit.GPIOB4 = 1;	// A1CSn high
		}

		// ***** read the encoders *****

		// channel 1
		enccnt[0] += (int)EvaRegs.T2CNT;// add the count for the interval
		EvaRegs.T2CNT = 0;// reset the count

		// channel 2
		enccnt[1] += (int)EvbRegs.T4CNT;// add the count for the interval
		EvbRegs.T4CNT = 0;// reset the count

	}
	else						// phase 1
	{

		// --- chip 1 ---
		if( GpioDataRegs.GPDDAT.bit.GPIOD5 )
		{
			ad7738_err[1] = 1;			// error, not coverting
		}
		else
		{

			GpioDataRegs.GPBCLEAR.bit.GPIOB5 = 1;	// A0CSn low

			// Channel 1B
			ad7738_err[1] = 0;// no error

			spi_xmit( ADCREG_DATA+1 );// send the read command
			status = spi_recv();// read the status byte
			temp = 0;
			for( i = 0; i < 3; i++ )
			{
				temp <<= 8;
				temp |= spi_recv();			// read three bytes (24bits)
			}

			if( 0x0004 & status )			// no ref
			{
				ad7738_err[1] = 1;			// error
			}
			else if( 0x0001 & status )		// over
			{
				if( 0x0002 & status )			// negative
				{
					ad7738_cnt.adc[1] = temp - 0x01800000;
				}
				else					// positive
				{
					ad7738_cnt.adc[1] = temp + 0x00800000;
				}
			}
			else					// normal range
			{
				ad7738_cnt.adc[1] = temp - 0x00800000;
			}

			GpioDataRegs.GPBSET.bit.GPIOB5 = 1;	// A0CSn high
		}

		// --- chip 2 ---
		if( GpioDataRegs.GPDDAT.bit.GPIOD6 )
		{
			ad7738_err[3] = 1;			// error, not coverting
		}
		else
		{
			GpioDataRegs.GPBCLEAR.bit.GPIOB4 = 1;	// A1CSn low

			// Channel 2B
			ad7738_err[3] = 0;// no error
			spi_xmit( ADCREG_DATA+1 );// send the read command
			status = spi_recv();// read the status byte
			temp = 0;
			for( i = 0; i < 3; i++ )
			{
				temp <<= 8;
				temp |= spi_recv();			// read three bytes (24bits)
			}

			if( 0x0004 & status )			// no ref
			{
				ad7738_err[3] = 1;			// error
			}
			else if( 0x0001 & status )		// over
			{
				if( 0x0002 & status )			// negative
				{
					ad7738_cnt.adc[3] = temp - 0x01800000;
				}
				else					// positive
				{
					ad7738_cnt.adc[3] = temp + 0x00800000;
				}
			}
			else					// normal range
			{
				ad7738_cnt.adc[3] = temp - 0x00800000;
			}

			GpioDataRegs.GPBSET.bit.GPIOB4 = 1;	// A1CSn high
		}
	}

	// ***** start the next conversion *****

	GpioDataRegs.GPBCLEAR.bit.GPIOB7 = 1;// A_SYNC low

	GpioDataRegs.GPBCLEAR.bit.GPIOB5 = 1;// fCSn
	GpioDataRegs.GPBCLEAR.bit.GPIOB4 = 1;// A1CSn

	// send command to start the next conversion
	if( 0 == ad7738_ph )// phase 0
	{
		spi_xmit( ADCREG_MODE+1 );			// mode
	}
	else						// phase 1
	{
		spi_xmit( ADCREG_MODE );			// mode
	}
	spi_xmit( 0x5a );				// single conversion, dump, 24bit, np clamp

	GpioDataRegs.GPBSET.bit.GPIOB5 = 1;// A0CSn
	GpioDataRegs.GPBSET.bit.GPIOB4 = 1;// A1CSn

	GpioDataRegs.GPBSET.bit.GPIOB7 = 1;// A_SYNC high

	// ****** processing data ******

	if( 0 == ad7738_ph )
	{
		// --- phase 0 ---
		// processing encoder data

		// convert encoder count to inch
		for( i = 0; i < ENC_MAX; i++ )
		{
			ad7738_load.pos[i] = enccnt[i] * slope[0].pos[i];

			// *** tare here ***
			if( tare_reset & BITMAP[CHS_MAX+i] )// new tare value
			{
				tare_reset &= ~BITMAP[CHS_MAX+i];
				ad7738_tare.pos[i] = ad7738_load.pos[i];
				ad7738_load.pos[i] = 0;
			}
			else					// apply tare
			{
				ad7738_load.pos[i] -= ad7738_tare.pos[i];
			}

			// *** peak ***
			if( peak_reset & BITMAP[CHS_MAX+i] )
			{
				peak_reset &= ~BITMAP[CHS_MAX+i];
				ad7738_peak.pos[i] = ad7738_load.pos[i];
			}
			else
			{
				if( ad7738_peak.pos[i] < ad7738_load.pos[i] )
				{
					ad7738_peak.pos[i] = ad7738_load.pos[i];
				}
			}

			// *** valley ***
			if( vall_reset & BITMAP[CHS_MAX+i] )
			{
				vall_reset &= ~BITMAP[CHS_MAX+i];
				ad7738_vall.pos[i] = ad7738_load.pos[i];
			}
			else
			{
				if( ad7738_vall.pos[i] > ad7738_load.pos[i] )
				{
					ad7738_vall.pos[i] = ad7738_load.pos[i];
				}
			}
		}

		// velocity calculation
		for( i = 0; i < ENC_MAX; i++ )
		{
			temp = enccnt[i] - velpbuf[i][velidx];
			velpbuf[i][velidx] = enccnt[i];
			veldsum[i] += temp - veldbuf[i][velidx];
			veldbuf[i][velidx] = temp;

			ad7738_load.vel[i] = veldsum[i] * slope[0].vel[i];

			// *** tare here ***
			if( tare_reset & BITMAP[CHS_MAX+ENC_MAX+i] )// new tare value
			{
				tare_reset &= ~BITMAP[CHS_MAX+ENC_MAX+i];
				ad7738_tare.vel[i] = ad7738_load.vel[i];
				ad7738_load.vel[i] = 0;
			}
			else					// apply tare
			{
				ad7738_load.vel[i] -= ad7738_tare.vel[i];
			}

			// *** peak ***
			if( peak_reset & BITMAP[CHS_MAX+ENC_MAX+i] )
			{
				peak_reset &= ~BITMAP[CHS_MAX+ENC_MAX+i];
				ad7738_peak.vel[i] = ad7738_load.vel[i];
			}
			else
			{
				if( ad7738_peak.vel[i] < ad7738_load.vel[i] )
				{
					ad7738_peak.vel[i] = ad7738_load.vel[i];
				}
			}

			// *** valley ***
			if( vall_reset & BITMAP[CHS_MAX+ENC_MAX+i] )
			{
				vall_reset &= ~BITMAP[CHS_MAX+ENC_MAX+i];
				ad7738_vall.vel[i] = ad7738_load.vel[i];
			}
			else
			{
				if( ad7738_vall.vel[i] > ad7738_load.vel[i] )
				{
					ad7738_vall.vel[i] = ad7738_load.vel[i];
				}
			}
		}

		velidx++;
		if( velidx >= conf_data.velfilter )
		{
			velidx = 0;
		}

		// *** limit ***
		for( i = 0; i < LIM_MAX; i++ )
		{
			j = 0;
			switch( conf_data.lim[i].what )
			{
				case VFD_LOAD:
				limld = ad7738_load.adw[conf_data.lim[i].ch];
				j = ad7738_err[conf_data.lim[i].ch];
				break;
				case VFD_PEAK:
				limld = ad7738_peak.adw[conf_data.lim[i].ch];
				j = ad7738_err[conf_data.lim[i].ch];
				break;
				case VFD_VALL:
				limld = ad7738_vall.adw[conf_data.lim[i].ch];
				j = ad7738_err[conf_data.lim[i].ch];
				break;
				case VFD_POSI:
				limld = ad7738_vall.pos[conf_data.lim[i].ch];
				break;
				case VFD_VELO:
				limld = ad7738_vall.vel[conf_data.lim[i].ch];
				break;
			}

			if( j != 0 )					// error
			{
				continue;
			}

			if( limit[i] & LIM_ON )
			{							// limit is on
				if( ((limit[i] & LIM_HL) &&// higher than
								(limld > conf_data.lim[i].limits)) ||// true
						(!(limit[i] & LIM_HL) &&// lower than
								(limld < conf_data.lim[i].limits)) )// true
				{						// set triggered
					if( !(limit[i] & LIM_ST) )// if not already triggered
					{
						limit[i] |= LIM_ST;				// set status bit
						limitchgd[i] = 1;
						ssr_set( i, !(limit[i] & LIM_NC) );
					}
				}
				else if( ((limit[i] & LIM_HL) &&	// higher than
								(limld < conf_data.lim[i].limitr)) ||// reset
						(!(limit[i] & LIM_HL) &&// lower than
								(limld > conf_data.lim[i].limitr)) )// reset
				{						// reset triggered
					if( !(limit[i] & LIM_LA) && (limit[i] & LIM_ST) )
					{						// non-latching
						limit[i] &= ~LIM_ST;// set status bit
						limitchgd[i] = 1;
						ssr_set( i, (limit[i] & LIM_NC) );
					}
				}
			}
		}

		// *** DAC out ***
		if( !dacsetvolt )
		{
			for( i = 0; i < DAC_MAX; i++ )
			{
				if( VFD_VOLT == conf_data.dac[i].what )// skip this if direct voltage
				{
					continue;
				}

				j = 0;
				switch( conf_data.dac[i].what )
				{
					case VFD_LOAD:
					limld = ad7738_load.adw[conf_data.dac[i].ch] * dacs.adw[i] + daci.adc[i];
					j = ad7738_err[conf_data.dac[i].ch];
					break;
					case VFD_PEAK:
					limld = ad7738_peak.adw[conf_data.dac[i].ch] * dacs.adw[i] + daci.adc[i];
					j = ad7738_err[conf_data.dac[i].ch];
					break;
					case VFD_VALL:
					limld = ad7738_vall.adw[conf_data.dac[i].ch] * dacs.adw[i] + daci.adc[i];
					j = ad7738_err[conf_data.dac[i].ch];
					break;
					case VFD_POSI:
					limld = ad7738_load.pos[conf_data.dac[i].ch] * dacs.adw[i] + daci.adc[i];
					break;
					case VFD_VELO:
					limld = ad7738_load.vel[conf_data.dac[i].ch] * dacs.adw[i] + daci.adc[i];
					break;
				}

				if( j != 0 )					// error
				{
					continue;
				}

				if( limld < 0 )
				{
					temp = conf_data.dac[i].dslopen * limld + conf_data.dac[i].dint;
				}
				else
				{
					temp = conf_data.dac[i].dslopep * limld + conf_data.dac[i].dint;
				}

				if( temp <= 0 )
				{
					dacvalue = 0;
				}
				else if( temp >= 0x0000ffff )
				{
					dacvalue = 0x0000ffff;
				}
				else
				{
					dacvalue = (Uint16)temp;
				}
				mcbsp_xmit( dacvalue, i );
			}

			// *** DAC out, latch out new value ***
			latch_dac();
		}

		// ***** temperature reading count *****
		tempcnt++;// increase temperature count
		if( tempcnt == TEMPRATE )
		{
			tempstart = 1;				// time to start conversion
		}
		else if( tempcnt >= 2 * TEMPRATE )
		{
			tempcnt = 0;				// reset count
			tempread = 1;// time to read
		}

		// ***** tag id detection count *****
		tagscnt++;
		if( tagscnt == TAGSRATE )
		{
			tagscnt = 0;
			tagsdetect = 1;
		}

		// ***** update LCD display, one character *****
#if(SAMPRATE < 3001)
		if( !(mon_cnt &0x01) )
#endif
		{
			lcd_next();				// update lcd
		}

#ifdef SDHCCARD
		disk_timerproc();				// SD library
#endif

	}
	else
	{

		// ***** phase 1 *****
		// process analog data

		for( i = 0; i < CHS_MAX; i++ )
		{
			if( ad7738_err[i] )
			{
				// error condition
				//ad7738_cnt.adc[i] = 0;
				//ad7738_raw.adc[i] = 0;
				//ad7738_load.adw[i] = 0;
				continue;
			}

			// no error on adc reading
			// *** moving average filter ***
			if( conf_data.filter > 1 )
			{
				// first calculate the diff between the oldest and newset
				if( mafsize[i] < conf_data.filter )// moving window not full
				{
					if( mafsize[i] > 0 )
					{
						mafdiff[i] = ad7738_cnt.adc[i] - mafbuf[i][0];// diff from current to the first (oldest)
					}
					else
					{
						mafdiff[i] = 0;
					}
					mafsize[i]++;				// one more added
				}
				else					// moving window full
				{
					mafdiff[i] = ad7738_cnt.adc[i] - mafbuf[i][mafidx[i]];
					mafsum[i] -= mafbuf[i][mafidx[i]];// remove the oldest point
				}

				if( labs(mafdiff[i]) > adcdiff )
				{
					mafsum[i] = 0;
					mafidx[i] = 0;
					mafsize[i] = 1;
				}

				mafbuf[i][mafidx[i]] = ad7738_cnt.adc[i];// load the new value to buffer
				mafsum[i] += ad7738_cnt.adc[i];// add the newest

				ad7738_cnt.adc[i] = mafsum[i] / mafsize[i];// calculate the average

				mafidx[i]++;// point to the next cell
				if( mafidx[i] >= conf_data.filter )
				{
					mafidx[i] = 0;			// loop back
				}
			}

			// *** heat correction here ***
			ad7738_cnt.adc[i] *= hfactor.adw[i];

			// *** keep a copy for raw reading ***
			ad7738_raw.adc[i] = ad7738_cnt.adc[i];

			// *** apply cal scales ***
			j = 0;
			if( conf_data.sensor[conf_data.ch[i].ci].points > 2 )
			{
				while( ad7738_cnt.adc[i] > conf_data.sensor[conf_data.ch[i].ci].adc[j+1] &&
						j < conf_data.sensor[conf_data.ch[i].ci].points - 2 )
				{
					j++;
				}
			}
			ad7738_load.adw[i] = ad7738_cnt.adc[i] * slope[j].adw[i] + intercept[j].adw[i];

			// *** tare here ***
			if( tare_reset & BITMAP[i] )// new tare value
			{
				tare_reset &= ~BITMAP[i];
				ad7738_tare.adw[i] = ad7738_load.adw[i];
				ad7738_load.adw[i] = 0;
			}
			else					// apply tare
			{
				ad7738_load.adw[i] -= ad7738_tare.adw[i];
			}

			// *** peak ***
			if( peak_reset & BITMAP[i] )
			{
				peak_reset &= ~BITMAP[i];
				ad7738_peak.adw[i] = ad7738_load.adw[i];
			}
			else
			{
				if( ad7738_peak.adw[i] < ad7738_load.adw[i] )
				{
					ad7738_peak.adw[i] = ad7738_load.adw[i];
				}
			}

			// *** valley ***
			if( vall_reset & BITMAP[i] )
			{
				vall_reset &= ~BITMAP[i];
				ad7738_vall.adw[i] = ad7738_load.adw[i];
			}
			else
			{
				if( ad7738_vall.adw[i] > ad7738_load.adw[i] )
				{
					ad7738_vall.adw[i] = ad7738_load.adw[i];
				}
			}
		}

		rawrdy = 1;

		// *** add to the big buffer ***
		prod_add( &ad7738_load );

		// *** monitor data check ***
		mon_cnt++;
		if( mon_cnt > MON_RATE )
		{
			mon_cnt = 0;
			memcpy( (void*)&ad7738_mon, (void*)&ad7738_load, sizeof(adcwt_t) );
			monrdy = 1;
		}

	}

	// change phase
	ad7738_ph++;
	if( ad7738_ph > 1 )
	{
		ad7738_ph = 0;
	}
#endif

	GpioDataRegs.GPADAT.bit.GPIOA2 = 0;
	// Acknowledge this interrupt to receive more interrupts from group 1
	PieCtrlRegs.PIEACK.all = PIEACK_GROUP1
	;
}

interrupt void cpu_xint1_isr() {
	volatile long adcdata;
	static int trigger=0, firsttime=0;
	int speedsen1, speedsen2;

	GpioDataRegs.GPADAT.bit.GPIOA2 = 1;
	adcdata = xpi_adcdataread(ADCDATA + ADCREAD);

/*
	if(triggerSource == 0) {
		if(adcdata > triggerValADC) {
			dataCollectTrigger = 1;
		}
		trigger = 0;
	}
*/
	if(numfastinterrupts == 0) {
		firsttime = 1;
		trigger = 0;
	}
	if(numSpeedSensorsToUse == 1) {
		speedSensor = (DIGIN==speedSensorPolarity);
		if (speedSensor == 1  && trigger == 0 && firsttime == 1) {
			dropTime[0] = numfastinterrupts;
			dataCollectTrigger = 1;
			trigger = 1;
			firsttime = 0;
		}
		else if (speedSensor == 0 && trigger == 1) {
			dropTime[1] = numfastinterrupts;
			trigger = 0;
		}
	}
	else {
		speedsen1 = ((*(unsigned int*)0x2000)&0x2);
		speedsen2 = ((*(unsigned int*)0x2000)&0x1);

		if(speedsen1 == 2) {
			dropTime[0] = numfastinterrupts;
			dataCollectTrigger = 1;
			trigger = 1;
		}
		if(speedsen2 == 1 && trigger == 1) {
			dropTime[1] = numfastinterrupts;
			trigger = 0;
		}

	}
	if ((dataindex < DATASIZE) && (dataCollectTrigger == 1)) {
		//databuf[dataindex++] = (adcdata & 0xFFFFFFFC) + speedsen1 + speedsen2;
		databuf[dataindex++] = adcdata;

	}

	numfastinterrupts++;

	if (dataindex >= DATASIZE) {
		toggleFastDataCollect(0);
	}

	GpioDataRegs.GPADAT.bit.GPIOA2 = 0;

	PieCtrlRegs.PIEACK.all = PIEACK_GROUP1
	;

}
