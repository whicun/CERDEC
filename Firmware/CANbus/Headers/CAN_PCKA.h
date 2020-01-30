/*
 * CAN_PCKA.h
 *
 *  Created on: Dec 3, 2019
 *      Author: AntonS
 */

#ifndef HEADERS_CAN_PCKA_H_
#define HEADERS_CAN_PCKA_H_

struct  BMS_STATUS_BIT1 {        // bits  description
   unsigned int     MODE:3;  		// 0:2
   unsigned int     CONTACTOR:1;  	// 3
   unsigned int     BALANCING:1;  		// 4
   unsigned int     OTWARNING:1;  		// 5
   unsigned int     OVWARNING:1;  		// 6
   unsigned int		OCWARNING:1;		//7
   unsigned int		TRIPCODE:5;			//8:12
};

union BMSSTAT1_REG {
	long 					all;
	struct BMS_STATUS_BIT1	bits;
};

struct BMSSTATUS {
	union BMSSTAT1_REG		status;
	long 					faultcode;

};

struct  BMS_CMD_BIT {        // bits  description
	   unsigned int     MODE:3;  		// 0:2
	   unsigned int		RESET:1;
	   unsigned int 	RESERVED:12;
	   unsigned int		MSGCOUNTRX:16;

};


union BMS_CMD_REG {
	long				all;
	struct 	BMS_CMD_BIT	bit;

};

struct  BMS_DATA_1 {        // bits  description
	int MAX_CELL_NUM;
	int MIN_CELL_NUM;
	int VCELL_MIN;
	int VCELL_MAX;
};

struct  BMS_DATA_2 {        // bits  description
	int MSG_COUNT_TX;
	int SOC;
	int VPACK;
	int VCELL_AVE;
};

struct  BMS_DATA_3 {        // bits  description
	int MAX_CELL_NUM;
	int MIN_CELL_NUM;
	int TCELL_MIN;
	int TCELL_MAX;
};

struct  USER_CMD_BIT {        // bits  description
	   unsigned int     CMD_MODE:3;  		// 0:2
	   unsigned int		CMD_RESET:1;
	   unsigned int 	RESERVED:12;
	   unsigned int		MSGCOUNTTX:16;
};

union USER_CMD {
	long				all;
	struct 	USER_CMD_BIT	bit;
};

struct CONV_STAT_BIT {
	   unsigned int     MODE:3;  		// 0:2
	   unsigned int		CONTACTOR:1;
	   unsigned int		PRECONTACTOR:1;
	   unsigned int		OTWARNING:1;
	   unsigned int		OVWARNINGESD:1;
	   unsigned int		OVWARNINGBUS:1;
	   unsigned int		OCWARNINGESD:1;
	   unsigned int		OCWARNINGBUS:1;
	   unsigned int		TRIPCODE:5;
	   unsigned int 	RESERVED:16;
};

union CONV_STAT {
	long				all;
	struct	CONV_STAT_BIT	bit;
};


struct CONV_STATUS {
	union CONV_STAT	status;
	long faultcode;

};

struct  CONV_DATA_1 {        // bits  description
	int MSG_COUNT_RX;
	long VBUS_SET;
};
struct  CONV_DATA_2 {        // bits  description
	long VESD_ACT;
	long VBUS_ACT;
};
struct  CONV_DATA_3 {        // bits  description
	long ILOAD_ACT;
	long ISRC_ACT;
};

struct  CONV_DATA_4 {        // bits  description
	long IESD_ACT;
	long IBUS_ACT;
};

struct CONV1_TEMP {
	int TEMP_3;
	int TEMP_2;
	int TEMP_1;
	int TEMP_0;
};

struct CONV2_TEMP {
	int TEMP_7;
	int TEMP_6;
	int TEMP_5;
	int TEMP_4;

};

extern struct BMSSTATUS	bms_status;
extern union BMS_CMD_REG	bms_cmd;

void processBMSData();
void processGUIData();
void canVarInit(void);

#endif /* HEADERS_CAN_PCKA_H_ */
