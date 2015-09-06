/*
 =======================================================================================================================

	T8 Units Script
	
	Funktion:	fn_checkFlatGround.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
	if ( T8U_var_DEBUG ) then { [ "fn_checkFlatGround.sqf", "some msg", [ _varstoshare ] ] spawn T8U_fnc_DebugLog; };
	if ( T8U_var_DEBUG AND { T8U_var_DEBUG_marker } ) then { [ getPos _unitCaller, "ICON", "mil_start_noShadow", 1, "ColorBlack", 0.33 ] call T8U_fnc_DebugMarker; };
	
	
	
	marker "creation" by ACE3 | ace3mod.com

 =======================================================================================================================
*/

#define conFile(_msg) "debug_console" callExtension (_msg + "~0000")

private [ "_pos", "_normal", "_check", "_return" ];

_pos = param [ 0, [0,0,0], [[]]];

if ( _pos isEqualTo [0,0,0] ) exitWith { false };

_normal		= surfaceNormal _pos;
_check		= ( _normal select 2 ) * 1000;

_return = if ( _check > 995 ) then { true } else { false };

// _ftxt = format [ "T8RMG >> fn_checkFlatGround.sqf >>>>> %1 >> _return / _check >> %2 / %3", ( round diag_fps ), _return, _check ]; conFile( _ftxt );

// Return
_return