func draw_overall_fields()

  // System Status
  gfx_Panel(PANEL_RAISED, 12, 129, 65, 30, WHITE);

  // Number of discharges
  gfx_Panel(PANEL_RAISED, 12, 360, 65, 30, WHITE);

  // Stored Energy
  gfx_Panel(PANEL_RAISED, 516, 96, 108, 35, WHITE);

  // Time @ Max
  gfx_Panel(PANEL_RAISED, 516, 181, 108, 35, WHITE);

  // Est. Runtime
  gfx_Panel(PANEL_RAISED, 516, 222, 108, 35, WHITE);

  // Bus Voltage
  gfx_Panel(PANEL_RAISED, 516, 275, 108, 35, WHITE);

  // Output Current
  gfx_Panel(PANEL_RAISED, 516, 316, 108, 35, WHITE);

  // Cap. Voltage
  gfx_Panel(PANEL_RAISED, 516, 357, 108, 35, WHITE); 

endunc

func draw_overall_buttons()

    // ResetSystemStatus_btn
    img_ClearAttributes(hndl, iResetSystemStatus_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iResetSystemStatus_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iResetSystemStatus_btn);

    // ResetDischarges_btn
    img_ClearAttributes(hndl, iResetDischarges_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iResetDischarges_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iResetDischarges_btn);

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
  var alarm_index := 2;
  if(mod[alarm_index] == 0x00 || mod[alarm_index] == 0x00)
    return TRUE;
  else
    return FALSE;
  endif
endfunc

