/*
 * System_Object.c
 *
 *  Created on: Oct 30, 2017
 *      Author: ebenton
 */

#include "System_Object.h"
#include <DSP281x_Device.h>

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

SYSTEM System;

//getSystemStatus
Uint16 getSystemStatus()
{
	return System.status;
}
//setSystemStatus
void setSystemStatus(Uint16 status)
{
	System.status = status;
	return;
}
//getSystemMode
Uint16 getSystemMode()
{
	return System.mode;
}
//setSystemMode
void setSystemMode(Uint16 mode)
{
	System.mode = mode;
	return;
}
//getSystemIsoRelay
Uint16 getSystemIsoRelay()
{
	return System.isoRelay;
}
//setSystemIsoRelay
void setSystemIsoRelay(Uint16 isoRelay)
{
	System.isoRelay = isoRelay;
	return;
}
//getSystemSSRelay
Uint16 getSystemSSRelay()
{
	//return System.ssRelay;
}
//setSystemSSRelay
void setSSRelay(Uint16 ssRelay)
{
	//System.ssRelay = ssRelay;
	return;
}
//getSystemNumDischarges
Uint16 getSystemNumDischarges()
{
	//return System.numDischarges;
}
//setSystemNumDischarges
void setSystemNumDischarges(Uint16 numDischarges)
{
	//System.numDischarges = numDischarges;
	return;
}
//getSystemBusVoltage
Uint16 getSystemBusVoltage()
{
	return 0;//System.busVoltage;
}

void setSystemBusVoltage(Uint16 busVoltage)
{
	//System.busVoltage = busVoltage;
	return;
}
//getSystemOutCurrent
Uint16 getSystemOutCurrent()
{
	return System.outCurrent;
}
void setSystemOutCurrent(Uint16 outCurrent)
{
	System.outCurrent = outCurrent;
	return;
}
//getSystemCapVoltage
Uint16 getSystemCapVoltage()
{
	return System.capVoltage;
}

void setSystemCapVoltage(Uint16 capVoltage)
{
	System.capVoltage = capVoltage;
	return;
}

//getSystemCapVoltage
float getSystemCapVoltageF()
{
	return System.capVoltageF;
}

void setSystemCapVoltageF(float capVoltage)
{
	System.capVoltageF = capVoltage;
	return;
}
//getSystemOutCurrent
float getSystemOutCurrentF()
{
	return System.outCurrentF;
}
void setSystemOutCurrentF(float outCurrent)
{
	System.outCurrentF = outCurrent;
	return;
}






//getSystemFLRuntime
Uint16 getSystemRuntimeFL()
{
	//return System.runtimeFL;
}

void setSystemRuntimeFL(Uint16 runtimeFL)
{
	///System.runtimeFL = runtimeFL;
	return;
}
//getSystemRuntimeEst

Uint16 getSystemRuntimeEst()
{
	//return System.runtimeEst;
}

void setSytemRuntimeEst(Uint16 runtimeEst)
{
	//System.runtimeEst = runtimeEst;
	return;
}
//getSystemAvailEnergy
Uint16 getSystemAvailEnergy()
{
	return System.availEnergy;
}

void setSystemAvailEnergy(Uint16 availEnergy)
{
	System.availEnergy = availEnergy;
	return;
}

//getShelfTotalVoltage
Uint16 getShelfVoltage(Uint16 shelf)
{
	return System.shelves[shelf-1].totalVoltage;
}

void setShelfVoltage(Uint16 shelf, Uint16 voltage)
{
	System.shelves[shelf-1].totalVoltage = voltage;
	return;
}

//getShelfAvgTemperature
Uint16 getShelfAvgTemp(Uint16 shelf)
{
	return System.shelves[shelf-1].avgTemperature;
}

void setShelfAvgTemp(Uint16 shelf, Uint16 temperature)
{
	System.shelves[shelf-1].avgTemperature = temperature;
	return;
}

//getShelfMaxTemp
Uint16 getShelfMaxTemp(Uint16 shelf)
{
	return System.shelves[shelf-1].maxTemp;
}

void setShelfMaxTemp(Uint16 shelf, Uint16 temperature)
{
	System.shelves[shelf-1].maxTemp = temperature;
	return;
}

//getShelfMaxTemp
Uint16 getShelfMaxTempID(Uint16 shelf)
{
	return System.shelves[shelf-1].maxTempID;
}

void setShelfMaxTempID(Uint16 shelf, Uint16 ID)
{
	System.shelves[shelf-1].maxTempID = ID;
	return;
}

//getShelfMinTemp
Uint16 getShelfMinTemp(Uint16 shelf)
{
	return System.shelves[shelf-1].minTemp;
}

void setShelfMinTemp(Uint16 shelf, Uint16 temperature)
{
	System.shelves[shelf-1].minTemp = temperature;
	return;
}

Uint16 getShelfMinTempID(Uint16 shelf)
{
	return System.shelves[shelf-1].minTempID;
}

void setShelfMinTempID(Uint16 shelf, Uint16 ID)
{
	System.shelves[shelf-1].minTempID = ID;
	return;
}

//getShelfAlarms
Uint16 getShelfAlarms(Uint16 shelf)
{
	return System.shelves[shelf-1].alarms;
}

void setShelfAlarms(Uint16 shelf, Uint16 alarms)
{
	System.shelves[shelf-1].alarms = alarms;
	return;
}

Uint16 getShelfErrors(Uint16 shelf)
{
	return System.shelves[shelf-1].errors;
}

void setShelfErrors(Uint16 shelf, Uint16 errors)
{
	System.shelves[shelf-1].errors = errors;
	return;
}

//getModVoltage
Uint16 getModVoltage(Uint16 shelf, Uint16 mod)
{
	return System.shelves[shelf-1].modules[mod-1].voltage;
}

void setModVoltage(Uint16 shelf, Uint16 mod, Uint16 voltage)
{
	System.shelves[shelf-1].modules[mod-1].voltage = voltage;
	return;
}
//getModTemperature

Uint16 getModTemp(Uint16 shelf, Uint16 mod)
{
	return System.shelves[shelf-1].modules[mod-1].temperature;
}

void setModTemp(Uint16 shelf, Uint16 mod, Uint16 temperature)
{
	System.shelves[shelf-1].modules[mod-1].temperature = temperature;
	return;
}

//getModAlarms
Uint16 getModAlarms(Uint16 shelf, Uint16 mod)
{
	return System.shelves[shelf-1].modules[mod-1].alarms;
}

void setModAlarms(Uint16 shelf, Uint16 mod, Uint16 alarms)
{
	System.shelves[shelf-1].modules[mod-1].alarms = alarms;
	return;
}
