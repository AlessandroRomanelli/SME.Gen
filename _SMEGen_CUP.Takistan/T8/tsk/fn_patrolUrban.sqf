/*
 =======================================================================================================================

	Script: fn_patrollUrban.sqf
	Author(s): T-800a
	Inspired and partly based on code by Binesi's BIN_taskDefend/Patrole

	Description:
	Creates a continually randomized patrol path which circles inside a given marker area.
	!! All Waypoints are positioned on a Street !!
	The Size of the Marker is important, if its under 100m, the patrole area is set to 100m in diameter!
	On each Waypoint there is a 50% chance to switch to a random next Waypoint.

	Parameter(s):
	_this select 0: the group to which to assign the waypoints (Group)
	_this select 1: the position on which to base the patrol (Markername / String)
	_this select 2: (optional) is infantry group (Bool) Will force group to leave vehicle on waypoints!

	Returns:
	Boolean - success flag

	Example(s):
	null = [ group this, "MY_MARKER" ] execVM "fn_patrollUrban.sqf";
	null = [ group this, "MY_MARKER", false ] execVM "fn_patrollUrban.sqf";  // Not a Infantry Group

 =======================================================================================================================
*/

#include <..\MACRO.hpp>

private [ "_group", "_marker", "_infGroup", "_formation", "_statement", "_range", "_wp", "_wpArray", "_cycle", "_behaviour", "_speedMode" ];

_group		= param [ 0, grpNull, [grpNull]];
_marker		= param [ 1, "NO-MARKER-SET", ["",[]]]; 
_infGroup	= param [ 2, true, [true]]; 

__DEBUG( __FILE__, "INIT", _this );

if ( isNull _group ) exitWith { false };
if (( typeName _marker ) isEqualTo ( typeName "" ) AND {( getMarkerPos _marker ) isEqualTo [0,0,0] }) exitWith { false };
if (( typeName _marker ) isEqualTo ( typeName [] ) AND {( count _marker ) isEqualTo 0 }) exitWith { false };

if ( _infGroup ) then
{
	_formation = ["STAG COLUMN", "WEDGE", "ECH LEFT", "ECH RIGHT", "VEE", "DIAMOND"] call BIS_fnc_selectRandom;
	_statement = "[ this ] spawn T8U_fnc_GetOutVehicle; if ((random 10)>5) then { group this setCurrentWaypoint [(group this), (ceil (random (count (waypoints (group this)))))];};";
	_range = 20;
	_behaviour = "SAFE";
	_speedMode = "LIMITED";
} else {
	_formation = "COLUMN";
	_statement = "if ((random 10)>5) then { group this setCurrentWaypoint [(group this), (ceil (random (count (waypoints (group this)))))];};";
	_range = 30;
	_behaviour = "AWARE";
	_speedMode = "LIMITED";
};

_group setBehaviour "AWARE";
_group setSpeedMode "LIMITED";
_group setFormation _formation;

// Create waypoints based on array of positions
if (( typeName _marker ) isEqualTo ( typeName [] )) then
{
	private _wpArrayTmp = [];
	_wpArray = [];
	{
		__DEBUG( __FILE__, "_marker > _x", _x );
		
		if !(( getMarkerPos _x ) isEqualTo [0,0,0] ) then
		{
			_wpArrayTmp = [ _x, _infGroup ] call T8U_fnc_CreateWaypointPositions;
			_wpArrayTmp = _wpArrayTmp call BIS_fnc_arrayShuffle;
		
			_wpArray append _wpArrayTmp;
		};
		
		__DEBUG( __FILE__, "_wpArray", _wpArray );
		
		false
	} count _marker;
	
} else {
	_wpArray = [ _marker, _infGroup ] call T8U_fnc_CreateWaypointPositions;
	_wpArray = _wpArray call BIS_fnc_arrayShuffle;
	__DEBUG( __FILE__, "_wpArray", _wpArray );
};


{
	if ( count _x > 0 ) then 
	{
		[ _group, _x, "MOVE", _behaviour, _statement, _range, _speedMode, [ 0, 15, 60 ] ] call T8U_fnc_CreateWaypoint;

		_cycle = _x;
		
		if ( T8U_var_DEBUG_marker ) then { [ _x ] call T8U_fnc_DebugMarker; };
	};
} forEach _wpArray;

// Cycle in case we reach the end
[ _group, _cycle, "CYCLE", "SAFE", "", 100 ] call T8U_fnc_CreateWaypoint;

__DEBUG( __FILE__, "Successfully Initialized", _group );

// Return
true
