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

endfunc

func draw_overall_mods()

  // MainModule1Good_btn
    img_ClearAttributes(hndl, iMainModule1Good_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iMainModule1Good_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iMainModule1Good_btn) ;

    // MainModule2Good_btn
    img_ClearAttributes(hndl, iMainModule2Good_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iMainModule2Good_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iMainModule2Good_btn) ;

    // MainModule3Good_btn
    img_ClearAttributes(hndl, iMainModule3Good_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iMainModule3Good_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iMainModule3Good_btn) ;

    // MainModule4Good_btn
    img_ClearAttributes(hndl, iMainModule4Good_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iMainModule4Good_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iMainModule4Good_btn) ;

    // MainModule5Good_btn
    img_ClearAttributes(hndl, iMainModule5Good_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iMainModule5Good_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iMainModule5Good_btn) ;

    // MainModule6Good_btn
    img_ClearAttributes(hndl, iMainModule6Good_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iMainModule6Good_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iMainModule6Good_btn) ;

    // MainModule7Good_btn
    img_ClearAttributes(hndl, iMainModule7Good_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iMainModule7Good_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iMainModule7Good_btn) ;

    // MainModule8Good_btn
    img_ClearAttributes(hndl, iMainModule8Good_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iMainModule8Good_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iMainModule8Good_btn) ;

    // MainModule9Good_btn
    img_ClearAttributes(hndl, iMainModule9Good_btn, I_TOUCH_DISABLE);
    img_SetWord(hndl, iMainModule9Good_btn, IMAGE_INDEX, UP);
    img_Show(hndl,iMainModule9Good_btn) ;

endfunc