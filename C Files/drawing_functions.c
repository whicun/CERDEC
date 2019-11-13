// ##################
// DRAWING
// ##################

// === Overall Form ===

func draw_overall_form()

  // Overall System Form
  // Also contains the border for the System Mode
  img_Show(hndl,iOverallStatus_Form);

  // Draw the Title
  img_Show(hndl,iCERDEC_Title);

  // Draw the System Status
  draw_system_status();

  // Draw the System Mode
  draw_system_mode();

  // Draw the Relay Status
  draw_relay_status();

  // Draw the Number of Discharges
  draw_num_discharges();

  // Draw Stored Energy
  draw_stored_energy();

  // Draw Time at Max
  draw_time_at_max();

  // Draw Estimated Runtime
  draw_estimated_runtime();

  // Draw Bus Voltage
  draw_bus_voltage();

  // Draw Output Current
  draw_output_current();

  // Draw Capacitors' Voltage
  draw_capacitors_voltage();

  // Draw the buttons on the far right side
  draw_right_side_buttons();

  // Draw the Modules
  draw_overall_mods();

endfunc

func draw_system_status()

  // System Status Field
  gfx_Panel(PANEL_RAISED, 12, 129, 65, 30, WHITE);

  // Reset System Status Button
  img_ClearAttributes(hndl, iResetSystemStatus_btn, I_TOUCH_DISABLE);
  img_SetWord(hndl, iResetSystemStatus_btn, IMAGE_INDEX, UP);
  img_Show(hndl,iResetSystemStatus_btn);

  // System Status Title
  img_Show(hndl,iSystemStatus_Title);

endfunc

func draw_system_mode()

  // System Mode Border is drawn in parent function
  
  // Draw the title + labels
  draw_system_mode_labels();

  // Draw the Radio Buttons
  draw_system_mode_radios();

endfunc

func draw_relay_status()

  // Relay State Label
  img_Show(hndl,iRelayState_Label);

  // Draw the Relay Status LED
  draw_relay_status_led();

endfunc

func draw_num_discharges()

  // Draw the Number Discharges Field
  gfx_Panel(PANEL_RAISED, 12, 360, 65, 30, WHITE);

  // Reset Discharges Button
  img_ClearAttributes(hndl, iResetDischarges_btn, I_TOUCH_DISABLE);
  img_SetWord(hndl, iResetDischarges_btn, IMAGE_INDEX, UP);
  img_Show(hndl,iResetDischarges_btn);

  // Draw the Number Discharges Title
  img_Show(hndl,iNumberDischarges_Label);

endfunc

func draw_stored_energy()

  // Stored Energy Field
  gfx_Panel(PANEL_RAISED, 516, 96, 108, 35, WHITE);

  // Stored Energy Label
  img_Show(hndl,iStoredEnergy_Label);

endfunc

func draw_time_at_max()

  // Time @ Max Field
  gfx_Panel(PANEL_RAISED, 516, 181, 108, 35, WHITE);

  // Time @ Max Label
  img_Show(hndl,iMaxTime_Label);

endfunc

func draw_estimated_runtime()

  // Estimated Runtime Field
  gfx_Panel(PANEL_RAISED, 516, 222, 108, 35, WHITE);

  // Estimated Runtime Label
  img_Show(hndl,iEstimatedRuntime_Label);

endfunc

func draw_bus_voltage()

  // Bus Voltage Field
  gfx_Panel(PANEL_RAISED, 516, 275, 108, 35, WHITE);

  // Bus Voltage Label
  img_Show(hndl,iBusVoltage_btn);

endfunc

func draw_output_current()

  // Output Current Field
  gfx_Panel(PANEL_RAISED, 516, 316, 108, 35, WHITE);

  // Output Current Label
  img_Show(hndl,iOutputCurrent_Label);

endfunc

func draw_capacitors_voltage()

  // Capacitors' Voltage Field
  gfx_Panel(PANEL_RAISED, 516, 357, 108, 35, WHITE);

  // Capacitors' Voltage Label
  img_Show(hndl,iCapacitorVoltage_Label);

endfunc

func draw_relay_status_led()

  var relay_index;
  relay_index := 2;

  // Draw the background LED first
  gfx_CircleFilled(111, 298, 18, 0x6B6D);

  // Draw the Relay Status LED
  if(system[relay_index] == ACTIVE)
    gfx_CircleFilled(111, 298, 17, LED_GOOD);
  else
    gfx_CircleFilled(111, 298, 17, LED_BAD);
  endif

endfunc

func draw_system_mode_radios()

  var mode_index, off, idle, voltage, power;
  mode_index := 1;
  off := 0;
  idle := 1;
  voltage := 2;
  power := 3;

  // System Off Radio Button
  if(system[mode_index] == off)
    gfx_CircleFilled(25, 215, 10, RB_CHKD);
  else
    gfx_CircleFilled(25, 215, 10, RB_UNCHKD);
  endif

  // System Idle Radio Button
  if(system[mode_index] == idle)
    gfx_CircleFilled(25, 250, 10, RB_CHKD);
  else
    gfx_CircleFilled(25, 250, 10, RB_UNCHKD);
  endif

  // System Power Radio Button
  if(system[mode_index] == power)
    gfx_CircleFilled(100, 250, 10, RB_CHKD);
  else
    gfx_CircleFilled(100, 250, 10, RB_UNCHKD);
  endif

  // System Voltage Radio Button
  if(system[mode_index] == voltage)
    gfx_CircleFilled(100, 215, 10, RB_CHKD);
  else
    gfx_CircleFilled(100, 215, 10, RB_UNCHKD);
  endif

endfunc

func draw_system_mode_labels()

  // System Mode Title
  img_Show(hndl,iSystemMode_Title);

  // System Mode Off Label
  img_Show(hndl,iSystemOff_Label);

  // System Mode Idle Label
  img_Show(hndl,iSystemIdle_Label);

  // System Mode Voltage Label
  img_Show(hndl,iSystemVoltage_Label);

  // System Mode Power Label
  img_Show(hndl,iSystemPower_Label);

endfunc

func draw_right_side_buttons()

    // SystemStart_btn
    img_ClearAttributes(hndl, iSystemStart_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iSystemStart_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iSystemStart_btn);

    // SystemStop_btn
    img_ClearAttributes(hndl, iSystemStop_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iSystemStop_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iSystemStop_btn);

    // Shelf_btn
    img_ClearAttributes(hndl, iShelf_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iShelf_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iShelf_btn);

    // EmergencyStop_btn
    img_ClearAttributes(hndl, iEmergencyStop_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iEmergencyStop_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iEmergencyStop_btn);

    // Draw all the module buttons
    draw_overall_mods();

endfunc

func draw_overall_mods()

  var alarm_index := 2;

  // Main Module 0 Button
  if(any_mod_errors?(mod0))
    // MainModule1Good_btn
    img_ClearAttributes(hndl, iMainModule1Good_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iMainModule1Good_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iMainModule1Good_btn);
  else
    // MainModule1Bad_btn
    img_ClearAttributes(hndl, iMainModule1Bad_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iMainModule1Bad_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iMainModule1Bad_btn);
  endif

  // Main Module 1 Button
  if(any_mod_errors?(mod1))
    // MainModule2Good_btn
    img_ClearAttributes(hndl, iMainModule2Good_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iMainModule2Good_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iMainModule2Good_btn);
  else
    // MainModule2Bad_btn
    img_ClearAttributes(hndl, iMainModule2Bad_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iMainModule2Bad_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iMainModule2Bad_btn);
  endif

  // Main Module 2 Button
  if(any_mod_errors?(mod2))
    // MainModule3Good_btn
    img_ClearAttributes(hndl, iMainModule3Good_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iMainModule3Good_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iMainModule3Good_btn);
  else
    // MainModule3Bad_btn
    img_ClearAttributes(hndl, iMainModule3Bad_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iMainModule3Bad_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iMainModule3Bad_btn);
  endif

  // Main Module 3 Button
  if(any_mod_errors?(mod3))
    // MainModule4Good_btn
    img_ClearAttributes(hndl, iMainModule4Good_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iMainModule4Good_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iMainModule4Good_btn);
  else
    // MainModule4Good_btn
    img_ClearAttributes(hndl, iMainModule4Bad_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iMainModule4Bad_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iMainModule4Bad_btn);
  endif

  // Main Module 4 Button
  if(any_mod_errors?(mod4))
    // MainModule5Good_btn
    img_ClearAttributes(hndl, iMainModule5Good_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iMainModule5Good_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iMainModule5Good_btn);
  else
    // MainModule5Good_btn
    img_ClearAttributes(hndl, iMainModule5Bad_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iMainModule5Bad_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iMainModule5Bad_btn);
  endif

  // Main Module 5 Button
  if(any_mod_errors?(mod5))
    // MainModule6Good_btn
    img_ClearAttributes(hndl, iMainModule6Good_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iMainModule6Good_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iMainModule6Good_btn);
  else
    // MainModule6Good_btn
    img_ClearAttributes(hndl, iMainModule6Bad_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iMainModule6Bad_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iMainModule6Bad_btn);
  endif

  // Main Module 6 Button
  if(any_mod_errors?(mod6))
    // MainModule7Good_btn
    img_ClearAttributes(hndl, iMainModule7Good_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iMainModule7Good_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iMainModule7Good_btn);
  else
    // MainModule7Good_btn
    img_ClearAttributes(hndl, iMainModule7Bad_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iMainModule7Bad_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iMainModule7Bad_btn);
  endif

  // Main Module 7 Button
  if(any_mod_errors?(mod7))
    // MainModule8Good_btn
    img_ClearAttributes(hndl, iMainModule8Good_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iMainModule8Good_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iMainModule8Good_btn);
  else
    // MainModule8Good_btn
    img_ClearAttributes(hndl, iMainModule8Bad_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iMainModule8Bad_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iMainModule8Bad_btn);
  endif

  // Main Module 8 Button
  if(any_mod_errors?(mod8))
    // MainModule9Good_btn
    img_ClearAttributes(hndl, iMainModule9Good_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iMainModule9Good_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iMainModule9Good_btn);
  else
    // MainModule9Good_btn
    img_ClearAttributes(hndl, iMainModule9Bad_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iMainModule9Bad_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iMainModule9Bad_btn);
  endif

endfunc

func any_mod_errors?(var mod)
  var alarm_index;
  alarm_index := 2;
  if(mod[alarm_index] == 0x00 || mod[alarm_index] == 0x00)
    return TRUE;
  else
    return FALSE;
  endif
endfunc

// === Shelf Form ===

func draw_shelf_form()



endfunc

func draw_shelf_alarms()

  // Draw the background panel
  gfx_OutlineColour(SILVER);
  gfx_Panel(PANEL_SUNKEN, 18, 225, 270, 236, 0x8D9C);
  gfx_OutlineColour(BLACK);

  // Draw the LEDs
  draw_shelf_alarm_leds();

  // Draw the labels for the LEDs
  draw_shelf_alarms_labels();

  // Draw the "Error" field
  gfx_Panel(PANEL_RAISED, 160, 406, 108, 35, WHITE);

  // Draw the title
  img_Show(hndl,iShelfAlarms_Title);

endfunc

func draw_shelf_readings()

  // Draw the background panel
  gfx_OutlineColour(SILVER);
  gfx_Panel(PANEL_SUNKEN, 296, 225, 324, 236, 0x8D9C);
  gfx_OutlineColour(BLACK);

  // Draw the labels
  draw_shelf_readings_labels();

  // Draw the fields
  draw_shelf_readings_fields();

  // Draw the title
  img_Show(hndl,iShelfReadings_Title);

endfunc

func draw_shelf_alarm_leds()

  var alarm_index, alarms;
  alarm_index := 6;
  alarms := shelf0[alarm_index];

  // Shelf Over Charged
  if(alarms & 0x01 == 0x01)
    gfx_CircleFilled(50, 265, 20, LED_GOOD);
  else
    gfx_CircleFilled(50, 265, 20, LED_BAD);
  endif

  // Shelf Over Temp
  if(alarms & 0x02 == 0x02)
    gfx_CircleFilled(50, 317, 20, LED_GOOD);
  else
    gfx_CircleFilled(50, 317, 20, LED_BAD);
  endif

  // Shelf Over Disc
  if(alarms & 0x04 == 0x04)
    gfx_CircleFilled(50, 368, 20, LED_GOOD);
  else
    gfx_CircleFilled(50, 368, 20, LED_BAD);
  endif

  // Shelf Error
  if(alarms & 0x08 == 0x08)
    gfx_CircleFilled(50, 425, 20, LED_GOOD);
  else
    gfx_CircleFilled(50, 425, 20, LED_BAD);
  endif

endfunc

func draw_shelf_alarms_labels()

  // Shelf Over Charge
  img_Show(hndl,iShelfOverCharge_Label);

  // Shelf Over Temp
  img_Show(hndl,iShelfOverTemp_Label);

  // Over Discharged
  img_Show(hndl,iOverDischarged_Label);

  // Shelf Error
  img_Show(hndl,iShelfError_Label);

endfunc

func draw_shelf_readings_labels()

  // Shelf Total Voltage
  img_Show(hndl,iShelfTotalVoltage_Label) ;

  // Shelf Average Temp
  img_Show(hndl,iShelfAverageTemp_Label) ;

  // Shelf Max Temp
  img_Show(hndl,iShelfMaxTemp_Label) ;

  // Shelf Min Temp
  img_Show(hndl,iShelfMinTemp_Label) ;

  // Shelf TotalVoltage_Units
  img_Show(hndl,iShelfTotalVoltage_Units) ;

  // Shelf AverageTemp_Units
  img_Show(hndl,iShelfAverageTemp_Units) ;

  // Module ID
  img_Show(hndl,iModuleID_Label) ;

endfunc

func draw_shelf_readings_fields()

  // Total Voltage
  gfx_Panel(PANEL_RAISED, 441, 246, 108, 35, WHITE) ;

  // Average Temp
  gfx_Panel(PANEL_RAISED, 441, 291, 108, 35, WHITE) ;

  // Max Temp
  gfx_Panel(PANEL_RAISED, 441, 364, 108, 35, WHITE) ;

  // Min Temp
  gfx_Panel(PANEL_RAISED, 441, 416, 108, 35, WHITE) ;

  // Max ID
  gfx_Panel(PANEL_RAISED, 560, 364, 50, 35, WHITE) ;

  // Min ID
  gfx_Panel(PANEL_RAISED, 560, 416, 50, 35, WHITE) ;

endfunc