/*
 *
 * (c)2016 Electro Standards Laboratories. All rights reserved.
 *
 * $Date: 2017-03-22 12:34:04 -0400 (Wed, 22 Mar 2017) $ Date of last commit
 * $HeadURL: https://svnrepo:18080/svn/r_and_d/AAG/Experimental/Lloyd/trunk/Water%20Twister%20Brake%20with%20Comm/Include/Quadrature.h $ URL of repository
 *
 * $Rev:: 1472                    $ Revision of last commit
 * $Author:: lslonim              $ Author of last commit
 *
 */

//! @file
//! This file contains the header info for the quadrature encoder subsystem.

#ifndef QUADRATURE_H
	#define QUADRATURE_H

	void InitQuadrature( Uint16 AllowIndex );

	Uint16 GetQuadratureCountA( void );
	Uint16 GetQuadratureCountB( void );

	void ResetQuadratureCountA( void );
	void ResetQuadratureCountB( void );

#endif
