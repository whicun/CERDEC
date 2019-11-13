// ##################
// Structures
// ##################

// System has 12 major characteristics
// 1) System Status, Int: 1 Byte
// 2) System Mode, Int: 1 Byte
// 3) Relay Status, Int: 1 Byte
// 4) # of Discharges, Int: 1 Byte
// 5) Stored Energy, Float: 2 Bytes
// 6) Time at Max, Float: 2 Bytes
// 7) Estimated Runtime, Float: 2 Bytes
// 8) Bus Voltage, Float: 2 Bytes
// 9) Output Current, Float: 2 Bytes
// 10) Capacitors' Voltage, Float: 2 Bytes
var system[16];

// Shelves have 9 major characteristics
// 1) Total Voltage, Float: 2 Bytes
// 2) Avg. Temp, Int: 1 Byte
// 3) Highest Temp, Float: 1 Byte
// 4) Lowest Temp, Float: 1 Bytes
// 5) ID Highest/Lowest Temp, Int: 1 Byte
// 6) Alarm/Error, Int : 1 Byte
// 7) Error ID, Int: 1 Byte
// 8) X Position,  Int: 1 Byte
// 9) Y Position,  Int: 1 Byte
// 10) Good Button handle, Ptr: 1 Byte
// 11) Bad Button handle, Ptr: 1 Byte
var shelf0[13];
var *shelf_ptr;
var shelf_volt[2];
var shelf_temp[2];

// Modules have 7 major characteristics
// 1) Voltage, Float: 2 Bytes
// 2) Temperature, Int: 1 Byte
// 3) Alarm/Error, Int: 1 Byte
// 4) X Position,  Int: 1 Byte
// 5) Y Position,  Int: 1 Byte
// 6) Good Button handle, Ptr: 1 Byte
// 7) Bad Button handle, Ptr: 1 Byte
var mod0[8];
var mod1[8];
var mod2[8];
var mod3[8];
var mod4[8];
var mod5[8];
var mod6[8];
var mod7[8];
var mod8[8];
var mods[9] := [mod0, mod1, mod2, mod3, mod4, mod5, mod6, mod7, mod8];
var current_mod := 0;
var *mod_ptr_1;
var *mod_ptr_2;
var mod_volt[2];
var mod_temp[2];