/*
 =======================================================================================================================

	@randomMission
	SME.Gen - Small Military Encounter Genenerator
 
	File:		fn_createRoadblock.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );

private [ "_pos", "_dir", "_dirCor", "_convoyObj", "_mappedObj" ];

_pos = _this select 0;
_dir = _this select 1;

_dirCor = if ( random 100 > 50 ) then { 270 } else { 90 };

_convoyObj = 
[
	["Land_Pallet_MilBoxes_F",[6.57178,2.80371,0],0,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[-8.47363,-3.87256,-2.38419e-006],270.52,1,0,[0,0],"","",true,false], 
	["Land_Cargo_Patrol_V3_F",[6.85278,4.3479,0],91.3166,1,0,[0,-0],"","",true,false], 
	["Land_Razorwire_F",[-8.45313,4.60645,-2.38419e-006],270.52,1,0,[0,0],"","",true,false], 
	["Land_HBarrierBig_F",[8.26343,-8.71216,0],358.491,1,0,[0,-0],"","",true,false], 
	["Land_HBarrierBig_F",[8.06226,9.5708,0],0,1,0,[0,0],"","",true,false], 
	["Land_Crash_barrier_F",[4.30786,-10.3076,2.86102e-006],179.312,1,0,[0,-0],"","",true,false], 
	["Land_Razorwire_F",[-8.44849,-12.0698,-2.38419e-006],270.52,1,0,[0,0],"","",true,false], 
	["Land_Crash_barrier_F",[10.8635,11.2334,2.86102e-006],0,1,0,[0,0],"","",true,false], 
	["Land_HBarrierBig_F",[13.0491,-3.41162,0],91.8945,1,0,[0,0],"","",true,false], 
	["Land_CncBarrier_stripes_F",[1.4834,-13.8357,0],0,1,0,[0,0],"","",true,false], 
	["Land_HBarrierBig_F",[13.2029,5.17285,0],91.8945,1,0,[0,0],"","",true,false], 
	["Land_CncBarrier_stripes_F",[4.39404,-13.853,0],0,1,0,[0,0],"","",true,false], 
	["Land_CncBarrier_stripes_F",[-1.41602,16.3455,0],0,1,0,[0,0],"","",true,false], 
	["Land_Razorwire_F",[-8.41382,12.9167,-2.38419e-006],270.52,1,0,[0,0],"","",true,false], 
	["Land_CncBarrier_stripes_F",[-4.32666,16.3628,0],0,1,0,[0,0],"","",true,false], 
	["Land_CncBarrier_stripes_F",[-1.3374,-21.7112,0],0,1,0,[0,0],"","",true,false], 
	["Land_CncBarrier_stripes_F",[-4.24805,-21.6938,0],0,1,0,[0,0],"","",true,false], 
	["Land_CncBarrier_stripes_F",[1.40479,24.2209,0],0,1,0,[0,0],"","",true,false], 
	["Land_CncBarrier_stripes_F",[4.31543,24.2036,0],0,1,0,[0,0],"","",true,false],
	["B_G_Offroad_01_armed_F",[-3.68262,14.575,-0.0180426],268.704,1,0,[-0.512406,-0.101331],"","",true,false],
	["B_G_Offroad_01_armed_F",[3.47852,-12.27,-0.0202475],89.5946,1,0,[-0.505112,-0.107737],"","",true,false], 
	["B_G_Van_01_transport_F",[7.29028,-4.53613,0.0135589],267.766,1,0,[-1.48218,2.18792],"","",true,false]
];


_mappedObj = [ _pos, ( _dir + _dirCor ), _convoyObj ] call BIS_fnc_objectsMapper;
{ sleep 0.5; if ( _x isKindOf "LandVehicle" ) then { _x setVehicleLock "LOCKED"; }; false } count _mappedObj;
T8RMG_var_arrayCleanup pushBack _mappedObj;

DEBUG( __FILE__, "_mappedObj", _mappedObj );

// Return
_mappedObj