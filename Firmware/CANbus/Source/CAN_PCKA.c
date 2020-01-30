/*
 * CAN_PCKA.c
 *
 */

#include "CAN_PCKA.h"
#include "DSP281x_Device.h"     // DSP28 Headerfile Include File
#include "DSP281x_Examples.h"   // DSP28 Examples Include File
#include "can.h"


struct BMSSTATUS	bms_status;
union BMS_CMD_REG	bms_cmd;

struct BMS_DATA_1	bms_data1;
struct BMS_DATA_2	bms_data2;
struct BMS_DATA_3	bms_data3;

union USER_CMD		user_cmd;
struct CONV_STATUS  conv_status;
struct  CONV_DATA_1	conv_data1;
struct  CONV_DATA_2	conv_data2;
struct  CONV_DATA_3	conv_data3;
struct  CONV_DATA_4	conv_data4;
struct  CONV1_TEMP	conv_temp1;
struct  CONV2_TEMP	conv_temp2;


extern int sysState;

void canVarInit(void) {

	bms_status.status.all = 0;
	bms_status.faultcode = 0;
	bms_cmd.all = 0;

	bms_data1.MAX_CELL_NUM = 0;
	bms_data1.MIN_CELL_NUM = 0;
	bms_data1.VCELL_MAX = 0;
	bms_data1.VCELL_MIN = 0;
	bms_data2.MSG_COUNT_TX = 0;
	bms_data2.SOC = 0;
	bms_data2.VCELL_AVE = 0;
	bms_data2.VPACK = 0;
	bms_data3.MAX_CELL_NUM = 0;
	bms_data3.MIN_CELL_NUM = 0;
	bms_data3.TCELL_MAX = 0;
	bms_data3.TCELL_MIN = 0;

	user_cmd.all = 0;
	conv_status.status.all = 0;
	conv_status.faultcode = 0;
	conv_data1.MSG_COUNT_RX = 0;
	conv_data1.VBUS_SET = 0;
	conv_data2.VBUS_ACT = 0;
	conv_data2.VESD_ACT = 0;
	conv_data3.ILOAD_ACT = 0;
	conv_data3.ISRC_ACT = 0;
	conv_data4.IBUS_ACT = 0;
	conv_data4.IESD_ACT = 0;
	conv_temp1.TEMP_0 = 0;
	conv_temp1.TEMP_1 = 0;
	conv_temp1.TEMP_2 = 0;
	conv_temp1.TEMP_3 = 0;
	conv_temp2.TEMP_4 = 0;
	conv_temp2.TEMP_5 = 0;
	conv_temp2.TEMP_6 = 0;
	conv_temp2.TEMP_7 = 0;

}


void processBMSData() {
	int max, maxindex, min, minindex;
	long sum;
	volatile int k;

	// find max and min module voltages
	max = 0;min = 30000;maxindex = 0; minindex = 0; sum = 0;
	for(k=0;k<9;k++) {
		if(getModVoltage(1,k) > max) {
			max = getModVoltage(1,k);
			maxindex = k;
		}
		if(getModVoltage(1,k) < min) {
			min = getModVoltage(1,k);
			minindex = k;
		}

		sum += getModVoltage(1,k);
	}

	bms_data1.MAX_CELL_NUM 				= maxindex;
	bms_data1.MIN_CELL_NUM 				= minindex;
	bms_data1.VCELL_MAX 				= max;
	bms_data1.VCELL_MIN 				= min;

	bms_data2.MSG_COUNT_TX				= bms_data2.MSG_COUNT_TX+1;
	bms_data2.SOC						= 0;
	bms_data2.VCELL_AVE					= sum/9;
	bms_data2.VPACK						= getSystemCapVoltage();

	bms_data3.MAX_CELL_NUM				= getShelfMaxTempID(1);
	bms_data3.MIN_CELL_NUM				= getShelfMinTempID(1);
	bms_data3.TCELL_MAX					= getShelfMaxTemp(1);
	bms_data3.TCELL_MIN					= getShelfMinTemp(1);

	if(ECanaRegs.CANRMP.bit.RMP14 == 1) {
		bms_cmd.all							= ECanaMboxes.MBOX14.MDL.all;
		ECanaRegs.CANRMP.bit.RMP14 = 1;
	}


	mailboxTX(bms_status.faultcode,bms_status.status.all,10);
	mailboxTX(bms_data1.MIN_CELL_NUM+(((long)(bms_data1.MAX_CELL_NUM))<<16),bms_data1.VCELL_MIN+(((long)(bms_data1.VCELL_MAX))<<16),11);
	mailboxTX(bms_data2.VPACK+(((long)(bms_data2.VCELL_AVE))<<16),bms_data2.MSG_COUNT_TX+(((long)(bms_data2.SOC))<<16),12);
	mailboxTX(bms_data3.TCELL_MIN+(((long)(bms_data3.TCELL_MAX))<<16),bms_data1.MAX_CELL_NUM+(((long)(bms_data3.MIN_CELL_NUM))<<16),13);

}

void processGUIData() {
	long *cptr;
	float ftemp;

	conv_temp1.TEMP_0 					= ECanaMboxes.MBOX5.MDH.word.HI_WORD;
	conv_temp1.TEMP_1 					= ECanaMboxes.MBOX5.MDH.word.LOW_WORD;
	conv_temp1.TEMP_2 					= ECanaMboxes.MBOX5.MDL.word.HI_WORD;
	conv_temp1.TEMP_3 					= ECanaMboxes.MBOX5.MDL.word.LOW_WORD;
	conv_temp2.TEMP_4 					= ECanaMboxes.MBOX6.MDH.word.HI_WORD;
	conv_temp2.TEMP_5 					= ECanaMboxes.MBOX6.MDH.word.LOW_WORD;
	conv_temp2.TEMP_6 					= ECanaMboxes.MBOX6.MDL.word.HI_WORD;
	conv_temp2.TEMP_7 					= ECanaMboxes.MBOX6.MDL.word.LOW_WORD;

	conv_data1.VBUS_SET					= ECanaMboxes.MBOX2.MDH.all;
	conv_data1.MSG_COUNT_RX				= ECanaMboxes.MBOX2.MDL.word.LOW_WORD;

	conv_data2.VBUS_ACT					= ECanaMboxes.MBOX3.MDH.all;
	conv_data2.VESD_ACT					= ECanaMboxes.MBOX3.MDL.all;

	conv_data3.ISRC_ACT					= ECanaMboxes.MBOX4.MDH.all;
	conv_data3.ILOAD_ACT				= ECanaMboxes.MBOX4.MDL.all;

	conv_data4.IBUS_ACT					= ECanaMboxes.MBOX5.MDH.all;
	conv_data4.IESD_ACT					= ECanaMboxes.MBOX5.MDL.all;

	conv_status.status.all				= ECanaMboxes.MBOX1.MDL.all;
	conv_status.faultcode				= ECanaMboxes.MBOX1.MDH.all;

	user_cmd.bit.CMD_MODE = 0;			// TODO: Get from GUI
	user_cmd.bit.CMD_RESET = 0;			// TODO: Get from GUI
	user_cmd.bit.MSGCOUNTTX = 0;		// TODO: Get from GUI

	mailboxTX(0,user_cmd.all,0);
}
