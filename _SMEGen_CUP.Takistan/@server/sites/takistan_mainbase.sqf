/*
 =======================================================================================================================
	
	@server
	
	File:		takistan_mainbase.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

	_cFnc is a modiefied version of the original XCAM function!
	
 =======================================================================================================================
*/

private [ "_cFnc" ];

_cFnc = 
{
	private [ "_obj" ];
	if (( count _this ) isEqualTo 9 ) then
	{
		_obj = _this select 8;
	} else {
		_obj = createVehicle [(_this select 0), call compile (_this select 1), [], 0, "CAN_COLLIDE" ];
	};
	
	_obj allowDamage false;
	if (( _this select 4 ) isEqualTo 1 ) then
	{
		if ( isMultiplayer ) then { _obj enableSimulationGlobal false; } else { _obj enableSimulation false; };
	};
	
	_obj setdir (_this select 2);
	if((_this select 3) == -100) then
	{
		_obj setposATL (call compile (_this select 1));
		if((_this select 5) == 0) then {_obj setVectorUp [0,0,1]} else {_obj setVectorUp (surfacenormal (getPosATL _obj))};
	}
	else
	{
		_obj setposworld [((call compile (_this select 1)) select 0),((call compile (_this select 1)) select 1),(_this select 3)];
		[_obj,((_this select 7) select 0),((_this select 7) select 1)] call BIS_fnc_setPitchBank;
	};
	if(count (_this select 6) > 0) then {{call _x} foreach (_this select 6)};
	
	
	//Return
	_obj
};

["WaterPump_01_sand_F","[8226.645508,2100.903564,0]",151.246,-100,1,0,[],[0,0]] call _cFnc;
["VR_Area_01_square_4x4_yellow_F","[8278.618164,2120.781738,0.000172685]",104.907,-100,1,0,[],[0,0]] call _cFnc;
["StorageBladder_02_water_sand_F","[8225.740234,2106.591309,0]",252.538,-100,1,0,[],[0,0]] call _cFnc;
["PlasticBarrier_03_orange_F","[8222.0302734,2097.345459,0]",-28.754,-100,1,0,[],[0,0]] call _cFnc;
["PlasticBarrier_03_orange_F","[8220.324219,2096.409424,0]",-28.754,-100,1,0,[],[0,0]] call _cFnc;
["PlasticBarrier_03_orange_F","[8218.618164,2095.473389,0]",-28.754,-100,1,0,[],[0,0]] call _cFnc;
["PlasticBarrier_03_orange_F","[8216.912109,2094.537354,0]",-28.754,-100,1,0,[],[0,0]] call _cFnc;
["PlasticBarrier_03_orange_F","[8215.206055,2093.601318,0]",-28.754,-100,1,0,[],[0,0]] call _cFnc;
["PlasticBarrier_03_orange_F","[8213.5,2092.665283,0]",-28.754,-100,1,0,[],[0,0]] call _cFnc;
["PlasticBarrier_03_orange_F","[8211.793945,2091.729248,0]",-28.754,-100,1,0,[],[0,0]] call _cFnc;
["Oil_Spill_F","[8215.182617,2104.890381,0]",110.089,-100,1,0,[],[0,0]] call _cFnc;
["Oil_Spill_F","[8201.327148,2113.265137,0]",41.0865,-100,1,0,[],[0,0]] call _cFnc;
["Land_Workbench_01_F","[8216.208008,2086.497559,0]",151.246,-100,1,0,[],[0,0]] call _cFnc;
["Land_Workbench_01_F","[8213.907227,2085.235107,0]",151.246,-100,1,0,[],[0,0]] call _cFnc;
["Land_WorkStand_F","[8201.842773,2087.589355,0]",338.569,-100,1,0,[],[0,0]] call _cFnc;
["Land_WoodenTable_large_F","[8227.732422,2092.382568,0]",61.246,-100,1,0,[],[0,0]] call _cFnc;
["Land_WoodenBox_F","[8214.0654297,2091.301514,0]",338.569,-100,1,0,[],[0,0]] call _cFnc;
["Land_WeldingTrolley_01_F","[8221.805664,2094.474365,0]",455.236,-100,1,0,[],[0,0]] call _cFnc;
["Land_ToolTrolley_02_F","[8221.899414,2097.817139,0]",419.503,-100,1,0,[],[0,0]] call _cFnc;
["Land_ToolTrolley_01_F","[8225.0283203,2098.863037,0]",508.329,-100,1,0,[],[0,0]] call _cFnc;
["Land_Shed_Small_F","[8219.484375,2088.897217,0]",241.246,-100,1,0,[],[0,0]] call _cFnc;
["Land_Scrap_MRAP_01_F","[8200.0380859,2092.775879,0]",194.087,-100,1,0,[],[0,0]] call _cFnc;
["Land_ScrapHeap_2_F","[8202.0410156,2083.171387,0]",148.696,-100,1,0,[],[0,0]] call _cFnc;
["Land_ScrapHeap_1_F","[8197.625,2097.294189,0]",148.127,-100,1,0,[],[0,0]] call _cFnc;
["Land_PressureWasher_01_F","[8224.975586,2088.35376,0]",151.246,-100,1,0,[],[0,0]] call _cFnc;
["Land_Portable_generator_F","[8214.411133,2083.0112305,0]",346.966,-100,1,0,[],[0,0]] call _cFnc;
["Land_PlasticCase_01_small_F","[8284.0566406,2126.561035,0.368871]",11.6873,-100,1,0,[],[0,0]] call _cFnc;
["Land_PlasticCase_01_medium_F","[8284.0957031,2126.579834,0]",3.16457,-100,1,0,[],[0,0]] call _cFnc;
["Land_PlasticCase_01_large_F","[8218.621094,2084.677734,0]",62.4368,-100,1,0,[],[0,0]] call _cFnc;
["Land_PlasticCase_01_large_F","[8217.983398,2084.383545,0.759691]",62.4368,-100,1,0,[],[0,0]] call _cFnc;
["Land_PlasticCase_01_large_F","[8217.46582,2084.072998,0]",62.4368,-100,1,0,[],[0,0]] call _cFnc;
["Land_PaperBox_open_full_F","[8285.00292969,2128.991211,0]",-73.2622,-100,1,0,[],[0,0]] call _cFnc;
["Land_PaperBox_open_full_F","[8283.149414,2129.240967,0]",5.31104,-100,1,0,[],[0,0]] call _cFnc;
["Land_PaperBox_open_full_F","[8218.806641,2091.911865,0]",241.246,-100,1,0,[],[0,0]] call _cFnc;
["Land_PaperBox_open_empty_F","[8277.272461,2114.00708008,0]",48.2403,-100,1,0,[],[0,0]] call _cFnc;
["Land_PaperBox_open_empty_F","[8221.779297,2087.0136719,0]",151.246,-100,1,0,[],[0,0]] call _cFnc;
["Land_PaperBox_closed_F","[8279.348633,2113.256592,0]",105.311,-100,1,0,[],[0,0]] call _cFnc;
["Land_PaperBox_closed_F","[8223.135742,2087.753174,0]",151.246,-100,1,0,[],[0,0]] call _cFnc;
["Land_Pallets_stack_F","[8220.220703,2086.102295,0]",514.958,-100,1,0,[],[0,0]] call _cFnc;
["Land_Pallets_F","[8212.526367,2088.611084,0]",357.572,-100,1,0,[],[0,0]] call _cFnc;
["Land_Pallet_MilBoxes_F","[8281.226563,2128.985596,0]",-143.565,-100,1,0,[],[0,0]] call _cFnc;
["Land_Pallet_MilBoxes_F","[8280.313477,2114.893311,0]",105.311,-100,1,0,[],[0,0]] call _cFnc;
["Land_Pallet_MilBoxes_F","[8220.328125,2092.593262,0]",241.246,-100,1,0,[],[0,0]] call _cFnc;
["Land_MobileScafolding_01_F","[8210.277344,2083.0915527,0]",570.955,-100,1,0,[],[0,0]] call _cFnc;
["Land_Metal_wooden_rack_F","[8229.748047,2090.551514,0]",151.246,-100,1,0,[],[0,0]] call _cFnc;
["Land_Metal_wooden_rack_F","[8228.761719,2090.0153809,0]",151.246,-100,1,0,[],[0,0]] call _cFnc;
["Land_Metal_wooden_rack_F","[8227.777344,2089.493408,0]",151.246,-100,1,0,[],[0,0]] call _cFnc;
["Land_Metal_wooden_rack_F","[8226.782227,2088.956055,0]",151.246,-100,1,0,[],[0,0]] call _cFnc;
["Land_Metal_rack_F","[8214.461914,2082.0244141,0]",151.246,-100,1,0,[],[0,0]] call _cFnc;
["Land_Metal_rack_F","[8213.493164,2081.493164,0]",151.246,-100,1,0,[],[0,0]] call _cFnc;
["Land_Metal_rack_F","[8212.524414,2080.961914,0]",151.246,-100,1,0,[],[0,0]] call _cFnc;
["Land_Metal_rack_F","[8211.555664,2080.430664,0]",151.246,-100,1,0,[],[0,0]] call _cFnc;
["Land_MetalCase_01_small_F","[8283.754883,2127.805908,0]",11.3085,-100,1,0,[],[0,0]] call _cFnc;
["Land_MetalCase_01_medium_F","[8284.453125,2127.572266,0.73496]",11.3085,-100,1,0,[],[0,0]] call _cFnc;
["Land_MetalCase_01_large_F","[8284.579102,2127.875488,0]",104.907,-100,1,0,[],[0,0]] call _cFnc;
["Land_MetalCase_01_large_F","[8284.451172,2127.271729,0]",101.309,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8256.371094,2155.0065918,0]",75.3662,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8254.958008,2160.417725,0]",75.3662,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8253.544922,2165.828857,0]",75.3662,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8253.345703,2152.330566,0]",165.366,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8252.131836,2171.23999,0]",75.3662,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8250.71875,2176.651123,0]",75.3662,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8247.93457,2150.917725,0]",165.366,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8246.889648,2177.720703,0]",-14.6338,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8242.523438,2149.504883,0]",165.366,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8241.478516,2176.307861,0]",-14.6338,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8240.941406,2128.186768,0]",253.093,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8239.314453,2133.537598,0]",253.093,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8237.6875,2138.888428,0]",253.093,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8237.112305,2148.092041,0]",165.366,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8236.0673828,2174.89502,0]",-14.6338,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8236.0615234,2144.239258,0]",253.093,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8230.65625,2173.482178,0]",345.366,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8225.480469,2173.944336,0]",25.8965,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8223.182617,2137.703857,0]",253.03,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8222.984375,2181.626465,0]",-18.8005,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8222.158203,2177.733398,0]",-108.8,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8221.549805,2143.0529785,0]",253.03,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8220.774414,2194.594238,0]",-18.8005,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8220.459961,2134.568604,0]",159.179,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8219.917969,2148.401855,0]",253.03,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8218.285156,2153.750977,0]",253.03,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8216.605469,2159.106201,0]",253.03,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8215.379883,2192.734131,0]",-18.8005,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8215.233398,2132.580811,0]",159.179,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8214.973633,2164.455078,0]",253.03,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8213.662109,2173.996338,0]",-108.8,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8213.34082,2169.804199,0]",253.03,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8210.524414,2176.467529,0]",-18.8005,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8210.00488281,2130.592773,0]",159.179,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8205.256836,2203.255615,0]",-18.8005,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8204.866211,2128.208252,0]",151.035,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8199.976563,2125.451904,0]",151.035,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8199.962891,2201.453125,0]",-18.8005,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8195.0839844,2122.743896,0]",151.035,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrier_5_F","[8190.190918,2120.0351563,0]",151.035,-100,1,0,[],[0,0]] call _cFnc;
["Land_GasTank_02_F","[8221.223633,2094.67627,0]",570.955,-100,1,0,[],[0,0]] call _cFnc;
["Land_FieldToilet_F","[8231.606445,2089.356689,0]",-28.754,-100,1,0,[],[0,0]] call _cFnc;
["Land_FieldToilet_F","[8229.0136719,2087.934082,0]",-28.754,-100,1,0,[],[0,0]] call _cFnc;
["Land_FieldToilet_F","[8226.420898,2086.511475,0]",-28.754,-100,1,0,[],[0,0]] call _cFnc;
["Land_FieldToilet_F","[8223.828125,2085.0888672,0]",-28.754,-100,1,0,[],[0,0]] call _cFnc;
["Land_EngineCrane_01_F","[8221.210938,2088.105469,0]",330.476,-100,1,0,[],[0,0]] call _cFnc;
["Land_ConcretePipe_F","[8235.548828,2087.601318,0]",339.958,-100,1,0,[],[0,0]] call _cFnc;
["Land_ConcretePipe_F","[8234.293945,2090.472656,0]",331.246,-100,1,0,[],[0,0]] call _cFnc;
["Land_Coil_F","[8237.879883,2089.401855,0]",331.246,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[8235.651367,2099.437012,0]",72.5379,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[8234.458984,2103.228271,0]",72.5379,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[8234.0429688,2097.617676,0]",162.538,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[8233.266602,2107.0195313,0]",72.5379,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[8232.0742188,2110.810791,0]",72.5379,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[8231.759766,2098.212402,0]",72.5379,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[8230.881836,2114.602051,0]",72.5379,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[8230.567383,2102.00366211,0]",72.5379,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[8229.689453,2118.393311,0]",72.5379,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[8229.375,2105.794922,0]",72.5379,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[8228.49707,2122.18457,0]",72.5379,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[8228.182617,2109.586182,0]",72.5379,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[8226.990234,2113.377441,0]",72.5379,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[8226.0107422,2123.484131,0]",162.538,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[8225.797852,2117.168701,0]",72.5379,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[8224.605469,2120.959961,0]",72.5379,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[8221.945313,2122.0610352,0]",155.089,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[8221.883789,2103.227295,0]",61.246,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[8219.97168,2106.71167,0]",61.246,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[8218.34082,2120.386963,0]",155.089,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[8218.0595703,2110.196045,0]",61.246,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[8216.147461,2113.68042,0]",61.246,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[8215.885742,2117.470215,0]",110.089,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[8205.884766,2094.447998,0]",61.246,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[8203.972656,2097.932373,0]",61.246,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[8202.0605469,2101.416748,0]",61.246,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[8200.148438,2104.901123,0]",61.246,-100,1,0,[],[0,0]] call _cFnc;
["Land_CncBarrier_stripes_F","[8196.823242,2107.206543,0]",16.246,-100,1,0,[],[0,0]] call _cFnc;
["Land_Cargo_Patrol_V3_F","[8238.162109,2181.74585,0]",160.29,-100,1,0,[],[0,0]] call _cFnc;
["Land_Cargo_Patrol_V3_F","[8204.744141,2169.62793,0]",156.755,-100,1,0,[],[0,0]] call _cFnc;
["Land_Cargo_HQ_V3_F","[8246.186523,2139.885498,0]",255.366,-100,1,0,[],[0,0]] call _cFnc;
["Land_Cargo20_vr_F","[8286.954102,2125.0695801,0]",284.907,-100,1,0,[],[0,0]] call _cFnc;
["Land_Cargo20_vr_F","[8285.363281,2119.0925293,0]",104.907,-100,1,0,[],[0,0]] call _cFnc;
["Land_Cargo20_vr_F","[8283.772461,2113.115234,0]",-75.093,-100,1,0,[],[0,0]] call _cFnc;
["Land_Cargo20_sand_F","[8221.855469,2114.29541,0]",70.3283,-100,1,0,[],[0,0]] call _cFnc;
["Land_Cargo20_military_green_F","[8224.446289,2114.877686,0]",72.5379,-100,1,0,[],[0,0]] call _cFnc;
["ContainmentArea_02_sand_F","[8225.731445,2106.579834,0]",72.5379,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[8243.443359,2011.553345,0]",239.971,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[8247.695313,2004.19751,0]",239.971,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[8251.947266,1996.841675,0]",239.971,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[8256.199219,1989.48584,0]",239.971,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[8253.553711,1983.957642,0]",149.971,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[8246.198242,1979.705811,0]",149.971,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[8238.842773,1975.453979,0]",149.971,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[8231.487305,1971.202148,0]",149.971,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[8224.131836,1966.950317,0]",149.971,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[8216.776367,1962.698486,0]",149.971,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[8209.420898,1958.446655,0]",149.971,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[8202.0654297,1954.194824,0]",149.971,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[8194.709961,1949.942993,0]",149.971,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[8187.354004,1945.691162,0]",149.971,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[8168.167969,1968.0421143,0]",239.971,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[8172.419922,1960.686157,0]",239.971,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[8176.671875,1953.330444,0]",239.971,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[8180.923828,1945.974487,0]",239.971,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[8304.411133,2099.131592,0]",149.971,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[8304.450195,2092.868164,0]",239.971,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[8308.702148,2085.512451,0]",239.971,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[8305.993164,2080.0671387,0]",329.971,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[8298.637695,2075.815186,0]",329.971,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[8291.282227,2071.563232,0]",329.971,-100,1,0,[],[0,0]] call _cFnc;
["Land_HBarrierBig_F","[8283.926758,2067.311279,0]",329.971,-100,1,0,[],[0,0]] call _cFnc;
["76n6ClamShell_EP1","[8297.5625,2085.968018,0]",239.971,-100,1,0,[],[0,0]] call _cFnc;
["PowGen_Big_EP1","[8295.888672,2078.0334473,0]",59.4154,-100,1,0,[],[0,0]] call _cFnc;
["PowGen_Big_EP1","[8294.575195,2080.497559,0]",59.4154,-100,1,0,[],[0,0]] call _cFnc;

// lights
["Land_PortableLight_single_F","[8210.34668,2080.689941,0]",570.955,-100,0,0,[],[0,0]] call _cFnc;
["Land_PortableLight_double_F","[8205.660156,2093.228027,0]",571.776,-100,0,0,[],[0,0]] call _cFnc;
["Land_Flush_Light_yellow_F","[8281.225586,2122.298096,0]",-34.045,-100,0,0,[],[0,0]] call _cFnc;
["Land_Flush_Light_yellow_F","[8280.163086,2118.15332,0]",-34.045,-100,0,0,[],[0,0]] call _cFnc;
["Land_Flush_Light_yellow_F","[8277.0986328,2123.359375,0]",-34.045,-100,0,0,[],[0,0]] call _cFnc;
["Land_Flush_Light_yellow_F","[8275.999023,2119.22998,0]",-34.045,-100,0,0,[],[0,0]] call _cFnc;
["Land_Flush_Light_green_F","[8218.961914,2101.377686,0]",-34.045,-100,0,0,[],[0,0]] call _cFnc;
["Land_Flush_Light_green_F","[8213.582031,2111.179443,0]",-34.045,-100,0,0,[],[0,0]] call _cFnc;
["Land_Flush_Light_green_F","[8209.111328,2096.0195313,0]",-34.045,-100,0,0,[],[0,0]] call _cFnc;
["Land_Flush_Light_green_F","[8203.701172,2105.806152,0]",-34.045,-100,0,0,[],[0,0]] call _cFnc;
["Land_LampHalogen_F","[8289.287109,2140.44873,0]",325.955,-100,0,0,[],[0,0]] call _cFnc;
["Land_LampHalogen_F","[8223.345703,2179.855469,0]",55.955,-100,0,0,[],[0,0]] call _cFnc;
["Land_LampHalogen_F","[8211.606445,2173.266113,0]",-132.934,-100,0,0,[],[0,0]] call _cFnc;
["Land_LampHalogen_F","[8183.65332,2041.401489,0]",203.077,-100,0,0,[],[0,0]] call _cFnc;
["Land_LampHalogen_F","[8171.851074,2034.637573,0]",-74.6637,-100,0,0,[],[0,0]] call _cFnc;

// align preplaced objects from normal editor
// repair station
["Land_HelipadSquare_F","[8211.329102,2103.603027,0]",151.246,-100,1,0,[],[0,0], mission_repairpad ] call _cFnc;

// arsenal post
["Land_InfoStand_V2_F","[8281.147461,2120.0581055,0]",104.907,-100,1,0,[],[0,0], mission_obj_arsenal_post ] call _cFnc;

// Signs
["SignAd_Sponsor_F","[8284.643555,2122.780029,0]",104.907,-100,1,0,[],[0,0],	mission_obj_arsenal_sign ] call _cFnc;
["SignAd_Sponsor_F","[8283.12207,2116.537354,0]",104.907,-100,1,0,[],[0,0],		mission_obj_usoc_sign ] call _cFnc;
["SignAd_Sponsor_F","[8220.408203,2120.770264,0]",155.089,-100,1,0,[],[0,0],	mission_obj_repair_sign ] call _cFnc;


// Billboard Objects
["Land_Billboard_F","[8231.676758,2104.0437012,0]",252.538,-100,1,0,[],[0,0],	mission_obj_billboard_01 ] call _cFnc;
["Land_Billboard_F","[8229.775391,2110.0874023,0]",252.538,-100,1,0,[],[0,0],	mission_obj_billboard_02 ] call _cFnc;
["Land_Billboard_F","[8227.874023,2116.131104,0]",252.538,-100,1,0,[],[0,0],	mission_obj_billboard_03 ] call _cFnc;


