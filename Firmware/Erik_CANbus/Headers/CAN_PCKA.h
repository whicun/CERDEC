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


extern struct BMSSTATUS	bms_status;
extern union BMS_CMD_REG	bms_cmd;


#endif /* HEADERS_CAN_PCKA_H_ */
