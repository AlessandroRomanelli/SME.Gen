/*
 =======================================================================================================================

	@client
	SME.Gen - Small Military Encounter Genenerator

	File:		fn_debugSiteMarkers.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
 =======================================================================================================================
*/

#define DEBUG(FILE,TEXT,VAR) [FILE,TEXT,VAR] call T8RMG_fnc_debug
// );


if ( isMultiplayer ) exitWith {};

private [ "_arraySites" ];

_arraySites = "(( getNumber ( _x >> 'scope' )) > 0 )" configClasses ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName );

{
	private [ "_siteMkr", "_sitePos", "_siteName", "_siteType", "_siteAngle", "_icon", "_color" ];
	_siteMkr			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> configName _x >> "marker" );
	_sitePos			= getArray ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> configName _x >> "position" );
	_siteName			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> configName _x >> "name" );
	_siteType			= getText ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> configName _x >> "type" );
	_siteAngle			= getNumber ( missionConfigFile >> "cfgRandomMissions" >> "missionSites" >> worldName >> configName _x >> "angle" );

	_siteMkr = format [ "debug_%1_%2", _siteMkr, time ];
	
	switch ( _siteType ) do
	{
		case "town" :		{ _icon = "loc_Fuelstation"; _color = "colorCivilian"; _siteAngle = -90; };
		case "military" :	{ _icon = "loc_Fortress"; _color = "colorOPFOR"; _siteAngle = -90;  };
		case "compound" :	{ _icon = "loc_Bunker"; _color = "colorBLUFOR"; _siteAngle = -90;  };
		case "road" :		{ _icon = "mil_arrow2_noShadow"; _color = "ColorOrange"; };
	};
	
	[ _siteMkr, _sitePos, _siteName, [1,1], ( _siteAngle + 90 ), "ICON", _icon, _color, 1 ] call T8RMG_fnc_createMarker;
	
	false
} count _arraySites; 

