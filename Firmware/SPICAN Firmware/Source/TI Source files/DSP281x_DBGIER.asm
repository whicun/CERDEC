;// TI File $Revision: 1038 $
;// Checkin $Date: 2016-12-02 16:33:40 -0500 (Fri, 02 Dec 2016) $
;//###########################################################################
;//
;// FILE:  DSP281x_DBGIER.asm
;//
;// TITLE: Set the DBGIER register
;//
;// DESCRIPTION:
;//  
;//  Function to set the DBGIER register (for realtime emulation).
;//  Function Prototype: void SetDBGIER(Uint16)
;//  Useage: SetDBGIER(value);
;//  Input Parameters: Uint16 value = value to put in DBGIER register. 
;//  Return Value: none          
;//
;//###########################################################################
;// $TI Release: DSP281x C/C++ Header Files V1.20 $
;// $Release Date: July 27, 2009 $
;//###########################################################################
		.global _SetDBGIER
		.text
		
_SetDBGIER:
		MOV 	*SP++,AL
		POP 	DBGIER
		LRETR
		
