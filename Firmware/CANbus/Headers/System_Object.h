/*
 * System_Object.h
 *
 *  Created on: Oct 26, 2017
 *      Author: ebenton
 */

#ifndef INCLUDE_SYSTEM_OBJECT_H_
#define INCLUDE_SYSTEM_OBJECT_H_

//Structure is as follows:
//System {
//	Uint16 status,
//	Uint16 mode,
//	Uint16 isoRelay,
//	Uint16 ssRelay,
//	Uint16 numDischarges,
//	Uint16 busVoltage,
//	Uint16 outCurrent,
//	Uint16 capVoltage,
//	Uint16 runtimeFL,
//	Uint16 runtimeEst,
//	Uint16 availEnergy,
//	Shelf shelf1 {
//		Uint16 totalVoltage,
//		Uint16 avgTemperature,
//		Uint16 maxTemp,
//		Uint16 minTemp,
//		Uint16 alarms,
//		Module mod1 {
//			Uint16 voltage,
//			Uint16 temperature,
//			Uint16 alarms
//		},
//		Module mod2{...},
//		Module mod3{...},
//		Module mod4{...},
//		Module mod5{...},
//		Module mod6{...},
//		Module mod7{...},
//		Module mod8{...},
//		Module mod9{...}
//	}
//	Shelf shelf2{...},
//	Shelf shelf3{...},
//	Shelf shelf4{...},
//}

typedef unsigned int       Uint16;

typedef struct {

	Uint16 voltage;
	Uint16 temperature;
	Uint16 alarms;

} MODULE;

typedef struct {

	Uint16 totalVoltage;
	Uint16 avgTemperature;
	Uint16 maxTemp;
	Uint16 minTemp;
	Uint16 maxTempID;
	Uint16 minTempID;
	Uint16 alarms;
	Uint16 errors;
	MODULE modules[9];
} SHELF;

typedef struct {

	Uint16 status;
	Uint16 mode;
	Uint16 isoRelay;
	//Uint16 ssRelay;
	//Uint16 numDischarges;
	//Uint16 busVoltage;
	Uint16 outCurrent;
	Uint16 capVoltage;

	float capVoltageF;
	float outCurrentF;
	//Uint16 runtimeFL;
	//Uint16 runtimeEst;
	Uint16 availEnergy;
	SHELF shelves[4];

} SYSTEM;


Uint16 getSystemStatus();
void setSystemStatus(Uint16 status);
Uint16 getSystemMode();
void setSystemMode(Uint16 mode);
Uint16 getSystemIsRelay();
void setSystemIsoRelay(Uint16 isoRelay);
Uint16 getSystemSSRelay();
void setSSRelay(Uint16 ssRelay);
Uint16 getSystemNumDischarges();
void setSystemNumDischarges(Uint16 numDischarges);
Uint16 getSystemBusVoltage();
void setSystemBusVoltage(Uint16 busVoltage);
Uint16 getSystemOutCurrent();
void setSystemOutCurrent(Uint16 outCurrent);
Uint16 getSystemCapVoltage();
void setSystemCapVoltage(Uint16 capVoltage);
Uint16 getSystemRuntimeFL();
void setSystemRuntimeFL(Uint16 runtimeFL);
Uint16 getSystemRuntimeEst();
void setSytemRuntimeEst(Uint16 runtimeEst);
Uint16 getSystemAvailEnergy();
void setSystemAvailEnergy(Uint16 availEnergy);
float getSystemCapVoltageF();
void setSystemCapVoltageF(float capVoltage);
float getSystemOutCurrentF();
void setSystemOutCurrentF(float outCurrent);

Uint16 getShelfVoltage(Uint16 shelf);
void setShelfVoltage(Uint16 shelf, Uint16 voltage);
Uint16 getShelfAvgTemp(Uint16 shelf);
void setShelfAvgTemp(Uint16 shelf, Uint16 temperature);
Uint16 getShelfMaxTemp(Uint16 shelf);
void setShelfMaxTemp(Uint16 shelf, Uint16 temperature);
Uint16 getShelfMaxTempID(Uint16 shelf);
void setShelfMaxTempID(Uint16 shelf, Uint16 ID);
Uint16 getShelfMinTemp(Uint16 shelf);
void setShelfMinTemp(Uint16 shelf, Uint16 temperature);
Uint16 getShelfMinTempID(Uint16 shelf);
void setShelfMinTempID(Uint16 shelf, Uint16 ID);
Uint16 getShelfAlarms(Uint16 shelf);
void setShelfAlarms(Uint16 shelf, Uint16 alarms);
Uint16 getShelfErrors(Uint16 shelf);
void setShelfErrors(Uint16 shelf, Uint16 errors);

Uint16 getModVoltage(Uint16 shelf, Uint16 mod);
void setModVoltage(Uint16 shelf, Uint16 mod, Uint16 voltage);
Uint16 getModTemp(Uint16 shelf, Uint16 mod);
void setModTemp(Uint16 shelf, Uint16 mod, Uint16 temperature);
Uint16 getModAlarms(Uint16 shelf, Uint16 mod);
void setModAlarms(Uint16 shelf, Uint16 mod, Uint16 alarms);

#endif /* INCLUDE_SYSTEM_OBJECT_H_ */
