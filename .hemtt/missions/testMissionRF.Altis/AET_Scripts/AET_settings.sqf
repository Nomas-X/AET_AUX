// MISSION MAKERS ONLY TOUCH THIS //
// ACE Advanced Balistics -> Advanced Ballistics = true or false //
force ace_advanced_ballistics_enabled = true;

// ACE Advanced Fatigue -> Enabled = true or false //
ace_advanced_fatigue_enabled = true;

// ACE Artillery -> Artillery Computer Disabled = true or false //
force ace_artillerytables_disableArtilleryComputer = false;

// ACE Fortify -> Time-Cost Coefficient = 0.00 to 10.00 //
force ace_fortify_timeCostCoefficient = 0;

// Ace Fortify -> Minimum Build Time = 0.00 to 10.00 //
force ace_fortify_timeMin = 0;

// ACE Headless -> Enabled = true or false //
force acex_headless_enabled = false;

// ACE Logistics -> Rearm Amount = 0, 1, or 2 [0 = Entire Vehicle, 1 = Entire Magazine, 2 = Amount based on caliber] //
force ace_rearm_level = 1;

// ACE Medical Treatment -> Self PAK Usage = 0, 1, or 2 [0 = No, 1 = Yes, 2 = Doctor] //
force ace_medical_treatment_allowSelfPAK = 0;

// ACE Medical Treatment -> Self Stitching = 0, 1, or 2 [0 = No, 1 = Yes, 2 = Doctor] //
force ace_medical_treatment_allowSelfStitch = 0;

// ACE Overheating -> Suppressor Coefficient = 0.00 to 5.00 //
force ace_overheating_suppressorCoef = 1;

// ACE Pylons -> Enable Pylons Menu from Ammo Trucks = true or false //
force ace_pylons_enabledFromAmmoTrucks = true;

// ACE View Restriction -> (Selective) Foot = 0, 1, or 2 [0 = Disabled, 1 = Forced 1st Person, 2 = Forced 3rd Person] //
force acex_viewrestriction_modeSelectiveFoot = 0;

// ACE View Restriction -> (Selective) Land Vehicles = 0, 1, or 2 [0 = Disabled, 1 = Forced 1st Person, 2 = Forced 3rd Person] //
force acex_viewrestriction_modeSelectiveLand = 0;

// ACE View Restriction -> (Selective) Air Vehicles = 0, 1, or 2 [0 = Disabled, 1 = Forced 1st Person, 2 = Forced 3rd Person] //
force acex_viewrestriction_modeSelectiveAir = 0;

// ACE View Restriction -> (Selective) Sea Vehicles = 0, 1, or 2 [0 = Disabled, 1 = Forced 1st Person, 2 = Forced 3rd Person] //
force acex_viewrestriction_modeSelectiveSea = 0;

// AET Common -> Enable Smoke GLs Anti-Bounce = true or false //
force AET_common_SET_antiBounceSmokeGL_enabled = true;

// AET Disclaimer -> Custom Intro File Path = "AET_Scripts\AET_customIntro.sqf" or any Arma 3 accepted file path //
force AET_disclaimer_SET_customIntro_path = "AET_Scripts\AET_customIntro.sqf";

// AET Disclaimer -> Disable Weapon Safety Bsed On = "NO_SAFETY", "DISCLAIMER_END", "TIME", "DISTANCE", "CUSTOM" //
force AET_disclaimer_SET_disableSafetymode = "DISCLAIMER_END";

// AET Disclaimer -> Time Based Safety Removal (Mission Time) = 0 to 1200 //
force AET_disclaimer_SET_disableSafetytime = 30;

// AET Disclaimer -> Distance Based Safety Removal (In Meters) = 0 to 500 //
force AET_disclaimer_SET_disableSafetydistance = 250;

// AET Loadout Handler -> Radios For Everyone = true or false //
force AET_loadout_handler_SET_radiosForEveryone_enabled = true;

// AET Loadout Handler -> Radio Class Name = "TFAR_anprc148jem" or any radio item class name //
force AET_loadout_handler_SET_radiosForEveryone_className = "TFAR_anprc148jem";

// AET Loadout Handler -> Hand Watches For Everyone = true or false //
force AET_loadout_handler_SET_handWatchesForEveryone_enabled = true;

// AET Loadout Handler -> Hand Watch Class Name = "ItemWatch" or any watch item class name //
force AET_loadout_handler_SET_handWatchesForEveryone_className = "ItemWatch";

// AET Loadout Handler -> Binoculars For Everyone = true or false //
force AET_loadout_handler_SET_binocularsForEveryone_enabled = true;

// AET Loadout Handler -> Binocular Class Name = "Binocular" or any binocular item class name //
force AET_loadout_handler_SET_binocularsForEveryone_className = "Binocular";

// AET Loadout Handler -> Maps For Everyone = true or false //
force AET_loadout_handler_SET_mapsForEveryone_enabled = true;

// AET Loadout Handler -> Map Class Name = "IttemMap" or any map item classname //
force AET_loadout_handler_SET_mapsForEveryone_className = "ItemMap";

// AET Loadout Handler -> GPSs For Everyone = true or false //
force AET_loadout_handler_SET_GPSsForEveryone_enabled = true;

// AET Loadout Handler -> GPS Class Name = "ItemGPS" or any GPS item class name //
force AET_loadout_handler_SET_GPSsForEveryone_className = "ItemGPS";

// AET Loadout Handler -> Compasses For Everyone = true or false //
force AET_loadout_handler_SET_compassesForEveryone_enabled = true;

// AET Loadout Handler -> Compass Class Name = "ItemCompass" or any compass item class name //
force AET_loadout_handler_SET_compassesForEveryone_className = "ItemCompass";

// AET Loadout Handler -> Uniform Equipment To Add = [["ACE_EarPlugs", 1], ["ACE_Flashlight_XL50", 2]] or an array of similar structure //
force AET_loadout_handler_SET_uniformInventory = "[
		[""ACE_EarPlugs"", 1],
		[""ACE_Flashlight_XL50"", 1],
		[""ACE_MapTools"", 1],
		[""ACE_CableTie"", 2],
		[""ACE_Canteen"", 1],
		[""acex_intelitems_notepad"", 1],
		[""ACE_SpraypaintBlack"", 1],
		[""ACE_SpraypaintBlue"", 1],
		[""ACE_SpraypaintGreen"", 1],
		[""ACE_SpraypaintRed"", 1],
		[""ACE_SpraypaintWhite"", 1],
		[""ACE_SpraypaintYellow"", 1],
		[""ACE_elasticBandage"", 10],
		[""ACE_packingBandage"", 10],
		[""ACE_epinephrine"", 2],
		[""ACE_morphine"", 2],
		[""ACE_painkillers"", 1],
		[""ACE_splint"", 2],
		[""ACE_tourniquet"", 2]
	]";

// AET Loadout Handler -> Vest Equipment To Add = [["ACE_EarPlugs", 1], ["ACE_Flashlight_XL50", 2]] or an array of similar structure //
force AET_loadout_handler_SET_vestInventory = "[
		[""SmokeShell"", 0],
		[""HandGrenade"", 0]
	]";

// AET Loadout Handler -> Backpack Equipment To Add = [["ACE_EarPlugs", 1], ["ACE_Flashlight_XL50", 2]] or an array of similar structure //
force AET_loadout_handler_SET_backpackInventory = "[
		[""ACE_EntrenchingTool"", 0],
		[""ACE_IR_Strobe_Item"", 0]
	]";

// Diwako's Punish unknown weapon -> Add more weapons = "" or "arifle_Mk20_plain_F,arifle_CTAR_blk_F" using weapon class names seperated by comma //
force diwako_unknownwp_add_weapons = "";

// Heavy Weapons Framework -> Add addtional recoil if not hold properly = true or false //
force WBK_HWF_AllowRecoilSetting = false;

// Heavy Weapons Framework -> Array of heavy weapons = "" or "['MMG_01_hex_F','MMG_01_hex_ARCO_LP_F']" using weapon class names surrounded by ' and seperated by comma //
force WBK_HWF_WeapsArraySetting = "['MMG_01_hex_F','MMG_01_hex_ARCO_LP_F','MMG_01_tan_F','MMG_02_black_F','MMG_02_black_RCO_BI_F','MMG_02_sand_F','MMG_02_sand_RCO_LP_F','MMG_02_camo_F','OPTRE_M247H_Etilka','OPTRE_M247H_Shield_Etilka','JLTS_Z6','SWLW_Z6','IDA_Z6','HLC_wp_M134Painless', 'UK3CB_M1919A4_Browning', 'UK3CB_M1919A6_Browning', 'UK3CB_Bren_303', 'UK3CB_Bren_L4_LMG', 'UK3CB_M60', 'UK3CB_MG3_Railed', 'UK3CB_MG3', 'UK3CB_MG3_KWS_B', 'UK3CB_MG3_KWS_G', 'UK3CB_MG3_KWS_T', 'UK3CB_UKM2000P', 'Aegis_MMG_FNMAG_F', 'MMG_01_black_F', 'MMG_01_ghex_F', 'Aegis_MMG_FNMAG_240_F', 'MMG_02_khaki_F', 'LMG_S77_lxWS', 'LMG_S77_AAF_lxWS', 'LMG_S77_Desert_lxWS', 'LMG_S77_GHex_lxWS', 'LMG_S77_Hex_lxWS', 'LMG_S77_Compact_lxWS', 'LMG_S77_Compact_Snakeskin_lxWS', 'MMG_01_hex_F', 'MMG_01_tan_F', 'MMG_02_black_F', 'MMG_02_camo_F', 'MMG_02_sand_F', 'CUP_lmg_L7A2_Flat', 'CUP_lmg_L7A2', 'CUP_lmg_M240_norail', 'CUP_lmg_M240_B', 'CUP_lmg_M240', 'CUP_lmg_M60', 'CUP_lmg_M60E4_norail', 'CUP_lmg_M60E4_norail_desert', 'CUP_lmg_M60E4_norail_jungle', 'CUP_lmg_M60E4_jungle', 'CUP_lmg_M60E4', 'CUP_M60A4_EP1', 'CUP_lmg_M60E4_desert', 'CUP_lmg_M60E4_wood', 'CUP_lmg_M60E4_norail_wood', 'CUP_lmg_FNMAG', 'CUP_lmg_FNMAG_RIS', 'CUP_lmg_FNMAG_RIS_modern', 'CUP_lmg_MG3', 'CUP_lmg_MG3_rail', 'CUP_lmg_PKM', 'CUP_lmg_PKM_B50_vfg', 'CUP_lmg_PKM_front_rail_B50_vfg', 'CUP_lmg_PKM_top_rail', 'CUP_lmg_PKM_top_rail_B50_vfg', 'CUP_lmg_PKMN', 'CUP_lmg_Pecheneg', 'CUP_lmg_Pecheneg_B50_vfg', 'CUP_lmg_Pecheneg_desert', 'CUP_lmg_Pecheneg_top_rail', 'CUP_lmg_Pecheneg_top_rail_B50_vfg', 'CUP_lmg_Pecheneg_woodland', 'CUP_lmg_UK59', 'gm_hmgpkm_prp', 'gm_lmgm62_blk', 'gm_mg3_blk', 'hlc_rifle_L4A3', 'HLC_wp_M134Painless', 'hlc_lmg_m60', 'hlc_lmg_M60E4', 'hlc_lmg_MG3_optic', 'hlc_lmg_MG3', 'hlc_lmg_MG3KWS_b', 'hlc_lmg_MG3KWS_g', 'hlc_lmg_MG3KWS', 'hlc_lmg_MG42', 'hlc_lmg_mg42_bakelite', 'hlc_lmg_mg42kws_b', 'hlc_lmg_mg42kws_g', 'hlc_lmg_MG42KWS_t', 'rhs_weap_pkm', 'rhs_weap_pkp', 'rhs_weap_fnmag', 'rhs_weap_mg42', 'rhs_weap_m84', 'rhs_weap_m240B', 'rhs_weap_m240G', 'vnx_fm2429', 'vn_dp28', 'vn_l4', 'vn_m1918', 'vn_m60', 'vn_m60_shorty', 'vn_m60_shorty_camo', 'vn_m63a_cdo', 'vn_m63a_lmg', 'vn_mg42', 'vn_pk', 'fow_w_mg34', 'fow_w_mg42', 'fow_w_type99_lmg', 'fow_w_bren', 'fow_w_m1918a2', 'fow_w_m1918a2_bak', 'fow_w_m1919a4', 'fow_w_m1919a6', 'LIB_Bren_Mk2', 'LIB_DP28', 'LIB_DT', 'LIB_DT_OPTIC', 'LIB_M1918A2_BAR', 'LIB_M1919A4', 'LIB_M1919A6', 'LIB_M2_Flamethrower', 'LIB_MG42', 'LIB_MG34', 'NORTH_ls26', 'NORTH_Madsen1914', 'NORTH_Madsen1922', 'NORTH_dp27', 'NORTH_DT_hand', 'NORTH_KG21', 'SPEX_LMG_303_Mk1', 'SPE_LMG_303_Mk2', 'SPE_Flammenwerfer41', 'SPE_FM_24_M29', 'SPE_M1918A0_BAR', 'SPE_M1918A2_BAR', 'SPE_M1918A2_erla_BAR', 'SPE_M1919A4', 'SPE_M1919A6', 'SPE_M2_Flamethrower', 'SPE_MG34', 'SPE_MG42', 'OPTRE_M247', 'OPTRE_M247A1', 'OPTRE_M247A1_Stripped', 'OPTRE_M247H_Etilka', 'OPTRE_M247H_Shield_Etilka', 'OPTRE_M250', 'OPTRE_M250_Gold', 'OPTRE_M73', 'OPTRE_M739_SAW_F', 'OPTRE_M739_SAW_Black_F', 'OPTRE_M739_SAW_Foregrip_F', 'OPTRE_M739_SAW_Foregrip_Black_F', 'JLTS_Z6', 'ls_weapon_ls150', 'ls_weapon_z6', '3AS_Flamer_Base']";

// Unit Voice-overs -> BLUFOR UVO Language = "NONE", "WEST", "EAST", "GUER", "AMER", "BRIT", "ASIA", "FREN", "GERM", "RUSS", "ARAB", "CZ", "POL" or "JP" //
force AET_UVO_BLUFOR_LANGUAGE = "WEST";

// Unit Voice-overs -> INDFOR UVO Language = "NONE", "WEST", "EAST", "GUER", "AMER", "BRIT", "ASIA", "FREN", "GERM", "RUSS", "ARAB", "CZ", "POL" or "JP" //
force AET_UVO_GUER_LANGUAGE = "GUER";

// Unit Voice-overs -> OPFOR UVO Language = "NONE", "WEST", "EAST", "GUER", "AMER", "BRIT", "ASIA", "FREN", "GERM", "RUSS", "ARAB", "CZ", "POL" or "JP" //
force AET_UVO_OPFOR_LANGUAGE = "EAST";

// Unit Voice-overs -> CIV UVO Language = "NONE", "WEST", "EAST", "GUER", "AMER", "BRIT", "ASIA", "FREN", "GERM", "RUSS", "ARAB", "CZ", "POL" or "JP" //
force AET_UVO_CIV_LANGUAGE = "NONE";

/* UVO Languages Guide
"NONE" = Disabled
"WEST" = WEST [English]
"EAST" = EAST [English]
"GUER" = GUER [English]
"AMER" = American & British [English]
"BRIT" = British [English]
"ASIA" = Chinese
"FREN" = French
"GERM" = German
"RUSS" = Russian
"ARAB" = Arabic
"CZ" = Czech
"POL" = Polish
"JP" = Japanese
*/
// MISSION MAKERS ONLY TOUCH THIS //