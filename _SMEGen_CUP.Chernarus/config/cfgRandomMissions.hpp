/*
 =======================================================================================================================

	SME.Gen - Small Military Encounter Genenerator
 
	File:		cfgRandomMissions.hpp
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

 =======================================================================================================================
*/

class cfgRandomMissions 
{
	class missionConfig
	{
		
	// --------------------------------------------------------------
	//	missionConfig - BASE MISSION CONFIG
	//

	// player faction
	// 0 - East 
	// 1 - West 
	// 2 - Indep

		playerFaction				= 1;


	// default faction ( if not overwritten by mission Params )
	// find in < missionFactions.hpp > to change spawned units / add factions

	//	spawnUnitsFaction			= "CUP_OPFOR_TAKarmy";
		spawnUnitsFaction			= "CUP_GRNFOR_NAPA";
		
		spawnUnitsFactionFriendly	= "CUP_BLUFOR_USMC";


	// default gear/reward set ( if not overwritten by mission Params )
	// find in < missionPlayerRewards.hpp > to change

		playerRewardSet				= "CUP_BLUFOR_USMC";


	// missions "won" needed for new vehicle 

		serverRewardSuccesses		= 3;


	// amount of spawned mission AOs

		spawnedSitesCount			= 2;


	// delays in minutes between a finished set of AOs will be cleanded, 
	// and a new set will be spawned

		missionCleanDelay			= 5;	// minutes
		missionSpawnDelay			= 2;	// minutes


	// modificators will affect spawned group sizes 
	//
	// _mod = ceil(((( _playerCount / !spawnModPlayer! ) * 2 ) * (( _groupCount / !spawnModGroup! ) * 2 )) * 2 );
	//

		spawnModPlayer				= 5;
		spawnModGroup				= 15;


	// slot restrictions	

		adminWhitelist[]			= { "76561197962343988" }; // T-800a
		pilotWhitelist01[]			= {};
		pilotWhitelist02[]			= {	"76561197962343988"	};


	// vehicle restrictions

		whitelistHelicopter[]		= { "B_Helipilot_F", "B_helicrew_F", "B_Pilot_F", "CUP_B_USMC_Pilot" };
		whitelistJet[]				= { "B_Helipilot_F", "B_helicrew_F", "B_Pilot_F", "CUP_B_USMC_Pilot" };
		whitelistCar[]				= {  };
		whitelistAPC[]				= {  };
		whitelistTruck[]			= {  };
		whitelistArmor[]			= {  };


	// rewards vehicle restriction
	
		missionRewardRestriction01	= "";
		missionRewardRestriction02	= "";
		missionRewardRestriction03	= "whitelistHelicopter";	

	};

	// --------------------------------------------------------------
	//
	//	MISSION PLAYER REWARDS
	//
	
	#include <missionPlayerRewards.hpp>


	// --------------------------------------------------------------
	//
	//	MISSION SITES
	//

	#include <missionSites.hpp>



	// --------------------------------------------------------------
	//
	//	MISSION TYPES	
	//

	#include <missionTypes.hpp>



	// --------------------------------------------------------------
	//
	//	MISSION FACTIONS
	//

	#include <missionFactions.hpp>



	// --------------------------------------------------------------
	//	END OF CONFIG
};