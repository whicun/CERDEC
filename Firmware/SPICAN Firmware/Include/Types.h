/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-03-26 14:38:00 -0400 (Sun, 26 Mar 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Include/Types.h $ URL of repository
 *
 * $Rev:: 1493                    $ Revision of last commit
 * $Author:: lslonim              $ Author of last commit
 *
 */

//! @file
//! This file containts the ESL typedefs that are used in this project.

#ifndef ESL_CTYPES
	#define ESL_CTYPES

	typedef unsigned char		u8;
	typedef unsigned char		u8bit;
	typedef unsigned char		u8bit_t;
	typedef unsigned char		Uint8;
	typedef unsigned int		u16;
	typedef unsigned int		u16bit_t;
	typedef unsigned int		u16bit;
	typedef unsigned long		u32;
	typedef unsigned long		u32bit;
	typedef unsigned long		u32bit_t;
	typedef unsigned long long	u64;
	typedef unsigned long long	u64bit;

	typedef char				char16;	//needed for compiler generated string constants
	typedef char				s8;
	typedef int					s16;
	typedef long				s32;
	typedef long long			s64;

	typedef float				Float32;
	typedef long double			Float64;

	typedef unsigned char *		PtrU8;
	typedef unsigned int *		PtrU16;
	typedef unsigned long *		PtrU32;
	typedef unsigned long long*	PtrU64;

	typedef char *				PtrS8;
	typedef int *				PtrS16;
	typedef long *				PtrS32;
	typedef float *				PtrFloat32;
	typedef long double *		PtrFloat64;

	typedef interrupt void(*PtrISRFunc)(void);	//Pointer to ISR function for use in vector table setup

	typedef unsigned int		boolean;

	#define TRUE			(1)
	#define FALSE			(0)
	#ifndef NULL
		#define NULL		(0)
	#endif
	#define FAIL			(0xFFFF)
#endif
