// ACE Advanced Ballistics
force force ace_advanced_ballistics_ammoTemperatureEnabled = true;
force force ace_advanced_ballistics_barrelLengthInfluenceEnabled = true;
force force ace_advanced_ballistics_bulletTraceEnabled = true;
force ace_advanced_ballistics_enabled = true;
force force ace_advanced_ballistics_muzzleVelocityVariationEnabled = true;
force force ace_advanced_ballistics_simulationInterval = 0.05;

// ACE Advanced Fatigue
force ace_advanced_fatigue_enabled = true;
force force ace_advanced_fatigue_enableStaminaBar = true;
force force ace_advanced_fatigue_fadeStaminaBar = true;
force ace_advanced_fatigue_loadFactor = 0.8;
force ace_advanced_fatigue_performanceFactor = 1;
force ace_advanced_fatigue_recoveryFactor = 3;
force ace_advanced_fatigue_terrainGradientFactor = 1;

// ACE Advanced Missile Guidance
force ace_missileguidance_chaffEffectivenessCoef = 1;
force ace_missileguidance_flareAngleCoef = 1;
force ace_missileguidance_flareEffectivenessCoef = 1;

// ACE Advanced Throwing
force force ace_advanced_throwing_enabled = true;
force force ace_advanced_throwing_enablePickUp = true;
force force ace_advanced_throwing_enablePickUpAttached = true;
ace_advanced_throwing_enableTempWindInfo = true;
force force ace_advanced_throwing_showMouseControls = true;
force force ace_advanced_throwing_showThrowArc = true;

// ACE Advanced Vehicle Damage
force ace_vehicle_damage_enableCarDamage = false;
force ace_vehicle_damage_enabled = false;

// ACE AI
force ace_ai_assignNVG = true;

// ACE Arsenal
force ace_arsenal_allowDefaultLoadouts = false;
force ace_arsenal_allowSharedLoadouts = true;
ace_arsenal_camInverted = false;
ace_arsenal_defaultToFavorites = false;
force ace_arsenal_enableIdentityTabs = false;
ace_arsenal_enableModIcons = 1;
ace_arsenal_EnableRPTLog = true;
ace_arsenal_favoritesColor = [0.9,0.875,0.6];
ace_arsenal_fontHeight = 5.5;
ace_arsenal_loadoutsSaveFace = false;
ace_arsenal_loadoutsSaveInsignia = true;
ace_arsenal_loadoutsSaveVoice = false;
ace_arsenal_showUnavailableItems = 0;

// ACE Artillery
force ace_artillerytables_advancedCorrections = false;
force ace_artillerytables_disableArtilleryComputer = false;
force ace_mk6mortar_airResistanceEnabled = false;
force ace_mk6mortar_allowCompass = true;
force ace_mk6mortar_allowComputerRangefinder = true;
force ace_mk6mortar_useAmmoHandling = false;

// ACE Captives
force force ace_captives_allowHandcuffOwnSide = true;
force force ace_captives_allowSurrender = true;
force force ace_captives_requireSurrender = 2;
force force ace_captives_requireSurrenderAi = true;

// ACE Casings
force ace_casings_enabled = true;
ace_casings_maxCasings = 250;

// ACE Common
force force ace_common_allowFadeMusic = true;
force force ace_common_checkExtensions = false;
force ace_common_checkPBOsAction = 2;
force ace_common_checkPBOsCheckAll = true;
force force ace_common_checkPBOsWhitelist = "[""jsrs_soundmod_cup_vehicles"",""squad_ak19_cup"",""squad_ak15_cup"",""squad_ak12_cup"",""squad_vityaz_cup"",""squad_mp7_cup"",""squad_m3grease_cup"",""squad_xm8_cup"",""squad_sks_cup"",""squad_scar_cup"",""squad_sa58_cup"",""squad_cup_m4"",""squad_m16_cup"",""squad_m14_cup"",""squad_l85_cup"",""squad_hk416_cup"",""squad_g36_cup"",""squad_fnfal_cup"",""squad_cz805_cup"",""squad_rpk_cup"",""squad_aks_cup"",""squad_aks74u_cup"",""squad_aks74gl_cup"",""squad_aks74_cup"",""squad_akm_cup"",""squad_ak74m_gl"",""squad_ak74m_cup"",""squad_akgl_cup"",""squad_ak74_cup"",""squad_ak47_cup"",""squad_ak107gl_cup"",""squad_ak107_cup"",""squad_ak105_cup"",""squad_ak104_cup"",""squad_ak102_cup"",""squad_uzi_cup"",""squad_pm_cup"",""squad_m9shield_cup"",""squad_m9_cup"",""squad_m1911_cup"",""squad_m17_cup"",""squad_g17_cup"",""squad_cz75_cup"",""squad_pk_cup"",""squad_mk48_cup"",""squad_m60_cup"",""squad_m249_cup"",""squad_m240_cup"",""squad_l110_cup"",""squad_remington700_cup"",""squad_r11rsass_cup"",""squad_mosin_cup"",""squad_mk12_cup"",""squad_m24_cup"",""squad_m110_cup"",""squad_m107_cup"",""squad_l129a1_cup"",""squad_cz550"",""squad_awm_Cup"",""squad_as50_cup"",""squad_smaw_cup"",""squad_rshg2_cup"",""squad_rpg7_cup"",""squad_rpg26_cup"",""squad_rpg18_cup"",""squad_metis_cup"",""squad_m72_cup"",""jsrs_soundmod_cfg_cup_weapons"",""jsrs_soundmod_cup_weapons"",""squad_aug_cup"",""squad_pkt_cup"",""squad_mk19_cup"",""squad_m2_cup"",""squad_m134_cup"",""squad_kpvt_cup"",""squad_kord_cup"",""squad_dshk_cup"",""squad_ags30_cup"",""squad_svd_cup"",""squad_tow_cup"",""squad_spg9_cup"",""squad_at5_cup"",""squad_rh120_m256_cup"",""squad_m242_cup"",""squad_m168_cup"",""squad_m68_cup"",""squad_l30_cup"",""squad_gzh302_cup"",""squad_d10_d5_2a70_2a28_cup"",""squad_azp23_cup"",""squad_2a46_cup"",""squad_2a42_2a72_cup"",""squad_2a14_cup"",""squad_m230_cup"",""squad_M197_cup"",""squad_FFAR_CUP"",""squad_AIM9_cup"",""squad_agm65_cup"",""squad_AGM114_cup"",""crowsza_drawbuild"",""crowsza_ace"",""Reeveli_TFAR_SOGPF_scribbles"",""NVGJammer"",""squad_scorpion_cup"",""squad_mp5_cup"",""squad_galil_cup"",""squad_g3a3_cup"",""squad_famas_cup"",""squad_czbren2_cup"",""squad_acr_cup"",""squad_tt33_cup"",""squad_browning_cup"",""squad_mg3_cup"",""squad_lee_enfield_Cup"",""squad_cz750_cup"",""squad_maaws_cup"",""squad_m136_cup"",""squad_APILAS_cup"",""squad_shells_explosions_cup"",""squad_rockets_explosion_cup"",""squad_missiles_exp_cup"",""crowsza_zeus_text"",""crowsza_tfar"",""crowsza_teleport"",""crowsza_pingbox"",""crowsza_misc"",""crowsza_main"",""zeus_additions_main"",""UPSL_aime_inventory"",""UPSL_aime_group"",""UPSL_aime_change_ammo"",""tsp_animate_ace"",""MIRA_Vehicle_Medical"",""jsrs_soundmod_rhs_saf_weapons"",""jsrs_soundmod_rhs_gref_weapons"",""DIS_enhanced_map_ace"",""squad_scorpion_sound"",""squad_m84_sounds"",""squad_g36_sounds"",""squad_CZ99_sounds"",""squad_vhsd2_sounds"",""squad_sound_TT33"",""postscriptum_savz58_sounds"",""squad_sa61_sounds"",""postscriptum_stg44_sounds"",""squad_mosin_sounds"",""squad_mg42_sound"",""squad_m92_sounds"",""squad_m76_sounds"",""squad_m70_sounds"",""squad_m3grease_sounds"",""squad_m21_sounds"",""postscriptum_m1_garand_sounds"",""postscriptum_kar98k_sounds"",""squad_fnfal_sound"",""squad_mp5_3cbf"",""squad_stgw_3cbf"",""squad_aug_3cbf"",""squad_SKS_3cbf"",""squad_springfield_3cbf"",""squad_m14_3cbf"",""squad_g3_3cbf"",""squad_g36_3cbf"",""squad_famas_3cbf"",""squad_FAL_OSW_3cbf"",""squad_ACR_3cbf"",""squad_usp_3cbf"",""squad_pkmstatic_3cbf"",""squad_mg42_3cbf"",""squad_m60_3cbf"",""bettinv_main_ace"",""bettinv_main"",""UPSL_aime_vehicle_seats"",""UPSL_aime_vehicle_controls"",""UPSL_aime_uav_terminal"",""UPSL_aime"",""Reeveli_TFAR_scribbles"",""KKA3_ACE_Extension_Anim_dire"",""KKA3_ACE_Extension_Anim"",""squad_yakb_sound"",""squad_S5_missile_sounds"",""squad_r73_sound"",""squad_kh25_sounds"",""STUI_AutoBrightness"",""diwako_dui_linecompass"",""diwako_dui_indicators"",""diwako_dui_buddy"",""cem_movement"",""cem_common"",""sog_melee_bind"",""DynaSound_DS_w_DAGR"",""DynaSound_DS_w_ASRAAM"",""DynaSound_DS_w_Alamut"",""KKA3_ACE_Extension_Anim_A2"",""JSRS_soundmod_gm_support"",""hal_AutoPilot"",""squad_mp7_sounds"",""squad_m230_apache"",""squad_m197_sound"",""squad_sound_hellfirerocket"",""squad_sound_FFARrocket"",""squad_AIM9_Rocket"",""A3TI"",""STUI_Stamina"",""STUI_NameTags"",""STUI_GroupIndicators"",""STUI_GroupHUD"",""STUI_Core"",""PDT_ENVG"",""diwako_dui_radar"",""diwako_dui_nametags"",""diwako_dui_main"",""cem_main"",""tsp_animate_walk"",""tsp_animate_viper"",""tsp_animate_radio"",""tsp_animate_loose"",""tsp_animate_butt"",""tsp_animate"",""DynaSound_DS_w_Sting"",""DynaSound_DS_w_SPMG"",""DynaSound_DS_w_SPAR"",""DynaSound_DS_w_SPAR762"",""DynaSound_DS_w_SkyFire"",""DynaSound_DS_w_SDAR"",""DynaSound_DS_w_Scalpel"",""DynaSound_DS_w_RPG7"",""DynaSound_DS_w_Rahim"",""DynaSound_DS_w_Protector"",""DynaSound_DS_w_PlaneLaunchers"",""DynaSound_DS_w_PDW2000"",""DynaSound_DS_w_PCML"",""DynaSound_DS_w_Navid"",""DynaSound_DS_w_MX"",""DynaSound_DS_w_MLRS"",""DynaSound_DS_w_MK200"",""DynaSound_DS_w_MINIGUN762"",""DynaSound_DS_w_MINIGUN65"",""DynaSound_DS_w_MAR10"",""DynaSound_DS_w_M14"",""DynaSound_DS_w_Lynx"",""DynaSound_DS_w_LRR"",""DynaSound_DS_w_lim"",""DynaSound_DS_w_Launcher_Small"",""DynaSound_DS_w_Launcher_Big"",""DynaSound_DS_w_Katiba"",""DynaSound_DS_w_HMG"",""DynaSound_DS_w_F2000"",""DynaSound_DS_w_EMR"",""DynaSound_DS_w_EBR"",""DynaSound_DS_w_Cyrus"",""DynaSound_DS_w_CoaxMG"",""DynaSound_DS_w_CMR76"",""DynaSound_DS_w_CAR95"",""DynaSound_DS_w_Autocannon"",""DynaSound_DS_w_AKS"",""DynaSound_DS_w_AKM"",""DynaSound_DS_w_AK12"",""DynaSound_DS_w_30mmgatling"",""DynaSound_DS_w_20mmgatling"",""DynaSound_DS_w_155mm"",""DynaSound_DS_w_120mm"",""DynaSound_DS_m_Explosions"",""DynaSound_DS_m_Bullets"",""DynaSound_DS_lv_HatchBackSport"",""DynaSound_DS_a_Xiang"",""DynaSound_DS_a_Taru"",""DynaSound_DS_a_Merlin"",""DynaSound_DS_a_Lynx"",""DynaSound_DS_a_Littlebird"",""DynaSound_DS_a_Kasatka"",""DynaSound_DS_a_Kajman"",""DynaSound_DS_a_Comanche"",""DynaSound_DS_a_Chinook"",""DynaSound_DS_a_Blackhawk"",""jsrs_soundmod_cfg_rhs_usf_air_vehicles"",""jsrs_soundmod_cfg_rhs_usf_vehicles"",""jsrs_soundmod_cfg_rhs_usf_weapons"",""jsrs_soundmod_rhs_usf_weapons"",""jsrs_soundmod_cfg_rhs_afrf_air_vehicles"",""jsrs_soundmod_cfg_rhs_afrf_vehicles"",""jsrs_soundmod_cfg_rhs_afrf_weapons"",""jsrs_soundmod_rhs_afrf_weapons"",""squad_sound_smaw"",""squad_scar_sounds"",""squad_sound_mk19"",""squad_weapon_m9beretta"",""squad_sound_m107"",""squad_weapon_m4_m16"",""squad_sound_m3maaws"",""squad_sound_m27a7"",""squad_sound_m256"",""squad_sound_m252"",""squad_sound_m24"",""squad_sound_m249_m240"",""squad_sound_m242"",""squad_sound_m1911"",""squad_m14_sounds"",""squad_sound_m136at4"",""squad_M134_Minigun"",""squad_sound_m110_sr25"",""squad_sound_glock17"",""Squad_RHSUSAF_Explosions"",""squad_sound_bgm17TOW"",""squad_sound_50cal"",""squad_sound_t5000"",""squad_sound_SVD"",""squad_sound_russia_pistols"",""squad_sound_rpk"",""squad_sound_rpg7"",""squad_sound_rpg26"",""squad_sound_pkt_coax"",""squad_sound_PKP"",""squad_sound_pkm"",""squad_sound_metis"",""squad_sound_majutka"",""squad_sound_kpvt"",""squad_sound_kornet"",""squad_sound_dshk_kord_nsvt"",""squad_sound_d81_azp23_2a14_d10"",""squad_sound_aks74u"",""squad_sound_akm"",""squad_sound_ak74"",""squad_sound_ak103"",""squad_sound_ags30"",""squad_sound_2a70"",""squad_sound_2a42"",""squad_sound_2a28"",""squad_m203_3cbf"",""squad_m16_3cbf"",""squad_leeenfield_3cbf"",""squad_AK_3cbf"",""squad_cz75_3cbf"",""squad_browningpistol_3cbf"",""squad_rpk_3cbf"",""squad_s53_3cbf"",""tsp_core"",""Small_Ragdoll"",""L_Suppress_Suppress_sys"",""L_Suppress_Suppress_main"",""L_Immerse_Immerse_sys"",""L_Immerse_Immerse_main"",""L_ES_ES_sys"",""L_ES_ES_sounds"",""L_ES_ES_main"",""DynaSound_DS_w_Zubr"",""DynaSound_DS_w_Zafir"",""DynaSound_DS_w_Vermin"",""DynaSound_DS_w_UGL"",""DynaSound_DS_w_Type115_2"",""DynaSound_DS_w_Type115_1"",""DynaSound_DS_w_Titan"",""DynaSound_DS_w_Tavor"",""DynaSound_DS_w_Tails"",""DynaSound_DS_w_Shared"",""DynaSound_DS_w_rook"",""DynaSound_DS_w_P07"",""DynaSound_DS_w_Kir"",""DynaSound_DS_w_GMG"",""DynaSound_DS_w_Gau8"",""DynaSound_DS_w_acpc2"",""DynaSound_DS_w_AA"",""DynaSound_DS_w_4Five"",""DynaSound_DS_sys"",""DynaSound_DS_main"",""PLP_VTOLHoverController"",""AdvDevTools"",""OPTRE_JSRS"",""jsrs_soundmod_reloadingsounds"",""jsrs_soundmod_ce_reloadingsounds"",""jsrs_soundmod_helicopters"",""jsrs_soundmod_bullethits"",""jsrs_soundmod_movement"",""jsrs_soundmod_landvehicles"",""jsrs_soundmod_framework"",""jsrs_soundmod_explosions"",""jsrs_soundmod_environment"",""jsrs_soundmod_weapons"",""jsrs_soundmod_sonic_cracks"",""jsrs_soundmod_boats"",""jsrs_soundmod_complete_edition"",""amz_improved_weapon_rifles"",""AMZ_pistols_sounds"",""amz_improved_weapon_mbt"",""AMZ_minigun_v1"",""AMZ_minigun_v2"",""AMZ_coax_sounds"",""AMZ_50cal_sounds"",""AMZ_sniper_sounds"",""AMZ_LMG_sounds"",""AMZ_UGL_sounds"",""AMZ_smokelauncher_sounds"",""AMZ_rpg7_sounds"",""AMZ_rpg32_sounds"",""AMZ_mraws_sounds"",""AMZ_40mmgl_sounds"",""AMZ_20mmgl_sounds"",""amz_improved_weapon_ifv"",""AMZ_Vanilla_RocketsPods"",""AMZ_Vanilla_Cannons_Air"",""AMZ_Vanilla_ATLauncher"",""AMZ_Vanilla_AALauncher"",""squad_tankcrack_soundimpact"",""squad_ifvcannoncrack_soundimpact"",""squad_rocketcrack_soundimpact"",""squad_50calbulletcrack_soundimpact"",""squad_bulletcrack_soundimpact"",""PS_AMZ_Thompson"",""PS_AMZ_sten"",""PS_AMZ_MP40"",""PS_AMZ_greasegun"",""PS_AMZ_SVT"",""PS_AMZ_Springfield"",""PS_AMZ_PTRD41"",""PS_AMZ_MP44"",""PS_AMZ_Mosin"",""PS_AMZ_M1Garand"",""PS_AMZ_M1Carbine"",""PS_AMZ_Lee_enfield"",""PS_AMZ_K98k"",""PS_AMZ_G43"",""PS_AMZ_FG42"",""PS_AMZ_TT33"",""PS_AMZ_m1911"",""PS_AMZ_MG42"",""PS_AMZ_MG34"",""PS_AMZ_50cal"",""PS_AMZ_M1919V"",""PS_AMZ_M1919V2"",""PS_AMZ_M1919_COAX"",""PS_AMZ_M1919"",""PS_AMZ_Bren"",""PS_AMZ_BAR"",""PS_AMZ_V_QF17"",""PS_AMZ_Piat"",""PS_AMZ_Panzershreck"",""PS_AMZ_V_OQF_75"",""PS_AMZ_Bazooka"",""PS_AMZ_Rocket"",""PS_AMZ_grenadeimpacts"",""PS_AMZ_ImpactsBullets"",""PS_AMZ_ImpactsBullets_config"",""PS_AMZ_ifa3config"",""tsp_animate_swim"",""fxp_VehTank"",""WarFXPE_Weps"",""AMZ_SPG9_sounds"",""fxp_tracer"",""DIS_Enhanced_Gps"",""mrb_a3_airvisibility"",""fxp_VehPlane"",""squad_weapon_library_soundmod"",""squad_weapon_soundmod"",""squad_tank_explosions"",""squad_small_explosions"",""squad_helo_small_explosions"",""squad_helo_big_explosions"",""squad_missiles_exp_sounds"",""squad_explosion_config"",""squad_explosion_soundmod"",""squad_sound_spg9"",""ZECCUP"",""GF_Deformer"",""ZEI"",""Blastcore_VEP"",""fxp_VehHeli"",""blast_refract"",""Blastcore_MainCore"",""Vile_HUD"",""PH_TacSwap"",""AdvDevTools_Fonts"",""fxp_VehExpEffectBig"",""fxp_VehExpEffect"",""A3_Anims_F_Config_Sdr"",""WarFXPE"",""SA_AdvancedTowing"",""jsrs_soundmod_complete_edition_soundfiles"",""Ca"",""BW_adaptive_roadway"",""fxp_GrenadeSmoke"",""compositions_a3"", ""clv_trigger_debugger"", ""tsp_common"", ""female3_ICEMAN"", ""Radio_Animations"", ""tsp_sound"", ""tsp_throw"", ""fxp_BombGBU12"", ""fxp_LauncherExp"", ""fxp_LauncherSmo"", ""fxp_ArtyCanFired"", ""fxp_ArtySmokShell"", ""fxp_CannonFired"", ""fxp_VehExpEffectSmall"", ""fxp_adat"", ""female3_ICEMAN"", ""fxp_VehCar"", ""mrb_a3_seavesselvisibility"", ""fxp_VehTankWhe"", ""fxp_Arty155mm"", ""fxp_Arty82mm"", ""fxp_VehCarAmmo"", ""fxp_VehCarFuel"", ""fxp_BombClust"", ""fxp_HitEfe"", ""fxp_RPGthru"", ""fxp_MisRocSmo"", ""jsrs_soundmod_ifa3_aio_sounds"", ""squad_Milan_gm"", ""squad_2a28_gm"", ""squad_L7"", ""squad_kba_gm"", ""squad_rh202_gm"", ""squad_pt76_gm"", ""squad_shilka_gm"", ""squad_d10_gm"", ""squad_m72_gm"", ""squad_pzf3"", ""squad_pzf44_gm"", ""squad_pzf84"", ""squad_rpg18_gm"", ""squad_rpg7_gm"", ""squad_50cal_gm"", ""squad_mg3_gm"", ""squad_pkm_gm"", ""squad_pkt_gm"", ""squad_pm_gm"", ""squad_ak_gm"", ""squad_g11_gm"", ""squad_g36_gm"", ""squad_g3_gm"", ""squad_hk33_gm"", ""squad_m16_gm"", ""squad_sg542_gm"", ""squad_sg552_gm"", ""squad_svd_gm"", ""squad_mp2_gm"", ""squad_FAGOT_gm"", ""squad_majutka_gm"", ""squad_spg9_gm"", ""squad_dshk_gm"", ""squad_kpvt_gm"", ""Blastcore_vanilla_smoke"", ""tsp_animate_aim"", ""tsp_animate_retro"", ""mbg_hotfix_content"", ""mbg_hotfix_anims"", ""dirt_main"", ""dirt_compat_blood"", ""dirt_compat_ace_field_rations""]";
force ace_common_deployedSwayFactor = 1;
ace_common_displayTextColor = [0,0,0,0.1];
ace_common_displayTextFontColor = [1,1,1,1];
force ace_common_enableSway = true;
ace_common_epilepsyFriendlyMode = false;
force force ace_common_magneticDeclination = false;
ace_common_progressBarInfo = 2;
force ace_common_restedSwayFactor = 1;
ace_common_settingFeedbackIcons = 1;
ace_common_settingProgressBarLocation = 0;
force ace_common_swayFactor = 0.5;

// ACE Cook-off
force ace_cookoff_ammoCookoffDuration = 0.5;
force ace_cookoff_cookoffDuration = 1;
force ace_cookoff_cookoffEnableProjectiles = true;
force ace_cookoff_cookoffEnableSound = true;
force ace_cookoff_destroyVehicleAfterCookoff = false;
force ace_cookoff_enableAmmobox = false;
force ace_cookoff_enableAmmoCookoff = false;
force ace_cookoff_enableFire = true;
force ace_cookoff_probabilityCoef = 1;
force ace_cookoff_removeAmmoDuringCookoff = true;

// ACE Crew Served Weapons
force ace_csw_ammoHandling = 0;
force ace_csw_defaultAssemblyMode = false;
force ace_csw_dragAfterDeploy = false;
force ace_csw_handleExtraMagazines = true;
force ace_csw_handleExtraMagazinesType = 0;
force ace_csw_progressBarTimeCoefficent = 1;

// ACE Dragging
force force ace_dragging_allowRunWithLightweight = true;
force force ace_dragging_dragAndFire = true;
force force ace_dragging_skipContainerWeight = true;
force force ace_dragging_weightCoefficient = 0;

// ACE Explosives
ace_explosives_customTimerDefault = 30;
force force ace_explosives_customTimerMax = 3600;
force force ace_explosives_customTimerMin = 5;
force ace_explosives_explodeOnDefuse = false;
force ace_explosives_punishNonSpecialists = true;
force ace_explosives_requireSpecialist = true;

// ACE Field Rations
force force ace_field_rations_zeusUpdates = false;
force acex_field_rations_affectAdvancedFatigue = true;
force acex_field_rations_enabled = false;
acex_field_rations_hudShowLevel = 0;
acex_field_rations_hudTransparency = -1;
acex_field_rations_hudType = 0;
force acex_field_rations_hungerSatiated = 2;
force acex_field_rations_nearDepletedConsequence = 0;
force acex_field_rations_terrainObjectActions = true;
force acex_field_rations_thirstQuenched = 2;
force acex_field_rations_timeWithoutFood = 2;
force acex_field_rations_timeWithoutWater = 2;
force acex_field_rations_waterSourceActions = 2;

// ACE Fire
force ace_fire_dropWeapon = 1;
force ace_fire_enabled = true;
force ace_fire_enableFlare = false;
ace_fire_enableScreams = true;

// ACE Fortify
force ace_fortify_markObjectsOnMap = 1;
force ace_fortify_timeCostCoefficient = 0;
force ace_fortify_timeMin = 0;
force force acex_fortify_settingHint = 1;

// ACE Fragmentation Simulation
force ace_frag_enabled = true;
force ace_frag_reflectionsEnabled = true;
force ace_frag_spallEnabled = true;
force ace_frag_spallIntensity = 1;

// ACE G-Forces
force ace_gforces_coef = 1;
force ace_gforces_enabledFor = 1;

// ACE Goggles
ace_goggles_drawOverlay = true;
force force ace_goggles_effects = 2;
force force ace_goggles_showClearGlasses = true;
force force ace_goggles_showInThirdPerson = false;

// ACE Grenades
force force ace_grenades_convertExplosives = true;

// ACE Headless
force force acex_headless_delay = 5;
force acex_headless_enabled = false;
force force acex_headless_endMission = 0;
force force acex_headless_log = true;
force force acex_headless_transferLoadout = 1;

// ACE Hearing
force force ace_hearing_autoAddEarplugsToUnits = 0;
ace_hearing_disableEarRinging = true;
force force ace_hearing_earplugsVolume = 0.5;
force ace_hearing_enableCombatDeafness = true;
force force ace_hearing_enabledForZeusUnits = false;
force force ace_hearing_enableNoiseDucking = true;
force force ace_hearing_explosionDeafnessCoefficient = 0;
force force ace_hearing_unconsciousnessVolume = 0.4;

// ACE Interaction
force force ace_interaction_disableNegativeRating = true;
force force ace_interaction_enableAnimActions = true;
force force ace_interaction_enableGroupRenaming = true;
force force ace_interaction_enableMagazinePassing = true;
force force ace_interaction_enableTeamManagement = true;
ace_interaction_enableThrowablePassing = true;
force force ace_interaction_enableWeaponAttachments = true;
force force ace_interaction_interactWithEnemyCrew = 0;
force force ace_interaction_interactWithTerrainObjects = false;
force force ace_interaction_remoteTeamManagement = true;

// ACE Interaction Menu
ace_gestures_showOnInteractionMenu = 2;
ace_interact_menu_actionOnKeyRelease = true;
ace_interact_menu_addBuildingActions = false;
ace_interact_menu_alwaysUseCursorInteraction = false;
ace_interact_menu_alwaysUseCursorSelfInteraction = true;
ace_interact_menu_colorShadowMax = [0,0,0,1];
ace_interact_menu_colorShadowMin = [0,0,0,0.25];
ace_interact_menu_colorTextMax = [1,1,1,1];
ace_interact_menu_colorTextMin = [1,1,1,0.25];
ace_interact_menu_consolidateSingleChild = false;
ace_interact_menu_cursorKeepCentered = false;
ace_interact_menu_cursorKeepCenteredSelfInteraction = false;
force force ace_interact_menu_menuAnimationSpeed = 0;
ace_interact_menu_menuBackground = 0;
ace_interact_menu_menuBackgroundSelf = 0;
ace_interact_menu_selectorColor = [1,0,0];
ace_interact_menu_shadowSetting = 2;
ace_interact_menu_textSize = 2;
ace_interact_menu_useListMenu = false;
ace_interact_menu_useListMenuSelf = true;

// ACE Interaction Menu (Self) - More
ace_interact_menu_more__ACE_Animations = false;
ace_interact_menu_more__ACE_CheckAirTemperature = false;
ace_interact_menu_more__ace_csw_deploy = false;
ace_interact_menu_more__ACE_Equipment = false;
ace_interact_menu_more__ACE_Explosives = false;
ace_interact_menu_more__ace_field_rations = false;
ace_interact_menu_more__ace_fortify = false;
ace_interact_menu_more__ace_gestures = false;
ace_interact_menu_more__ace_intelitems = false;
ace_interact_menu_more__ACE_MapFlashlight = false;
ace_interact_menu_more__ACE_MapGpsHide = false;
ace_interact_menu_more__ACE_MapGpsShow = false;
ace_interact_menu_more__ACE_MapTools = false;
ace_interact_menu_more__ACE_Medical = false;
ace_interact_menu_more__ACE_Medical_Menu = false;
ace_interact_menu_more__ACE_MoveRallypoint = false;
ace_interact_menu_more__ACE_PlottingBoard = false;
ace_interact_menu_more__ACE_PlottingBoardHide = false;
ace_interact_menu_more__ACE_RepackMagazines = false;
ace_interact_menu_more__ace_sandbag_place = false;
ace_interact_menu_more__ACE_StartSurrenderingSelf = false;
ace_interact_menu_more__ACE_StopEscortingSelf = false;
ace_interact_menu_more__ACE_StopSurrenderingSelf = false;
ace_interact_menu_more__ACE_Tags = false;
ace_interact_menu_more__ACE_TeamManagement = false;
ace_interact_menu_more__ace_zeus_create = false;
ace_interact_menu_more__ace_zeus_delete = false;
ace_interact_menu_more__acex_sitting_Stand = false;
ace_interact_menu_more__SwitchToCamera = false;
ace_interact_menu_more__TFAR_Radio = false;

// ACE Interaction Menu (Self) - Move to Root
ace_interact_menu_moveToRoot__ACE_Animations__ace_gestures_cat_gestures = false;
ace_interact_menu_moveToRoot__ACE_Animations__ace_gestures_cat_gestures__ace_gestures_Advance = false;
ace_interact_menu_moveToRoot__ACE_Animations__ace_gestures_cat_gestures__ace_gestures_CeaseFire = false;
ace_interact_menu_moveToRoot__ACE_Animations__ace_gestures_cat_gestures__ace_gestures_Cover = false;
ace_interact_menu_moveToRoot__ACE_Animations__ace_gestures_cat_gestures__ace_gestures_Engage = false;
ace_interact_menu_moveToRoot__ACE_Animations__ace_gestures_cat_gestures__ace_gestures_Follow = false;
ace_interact_menu_moveToRoot__ACE_Animations__ace_gestures_cat_gestures__ace_gestures_Forward = false;
ace_interact_menu_moveToRoot__ACE_Animations__ace_gestures_cat_gestures__ace_gestures_Freeze = false;
ace_interact_menu_moveToRoot__ACE_Animations__ace_gestures_cat_gestures__ace_gestures_Go = false;
ace_interact_menu_moveToRoot__ACE_Animations__ace_gestures_cat_gestures__ace_gestures_Hold = false;
ace_interact_menu_moveToRoot__ACE_Animations__ace_gestures_cat_gestures__ace_gestures_Point = false;
ace_interact_menu_moveToRoot__ACE_Animations__ace_gestures_cat_gestures__ace_gestures_Regroup = false;
ace_interact_menu_moveToRoot__ACE_Animations__ace_gestures_cat_gestures__ace_gestures_Stop = false;
ace_interact_menu_moveToRoot__ACE_Animations__ace_gestures_cat_gestures__ace_gestures_Up = false;
ace_interact_menu_moveToRoot__ACE_Animations__ace_gestures_cat_gestures__ace_gestures_Warning = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_cancel = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_dances = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_dances__tsp_animate_contact = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_dances__tsp_animate_duoIvan = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_dances__tsp_animate_duoStefan = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_dances__tsp_animate_kata = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_dances__tsp_animate_metal = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_dances__tsp_animate_pushups = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_dances__tsp_animate_squats = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_dances__tsp_animate_stefan = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_dances__tsp_animate_zozo = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_doors = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_doors__tsp_animate_abort = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_doors__tsp_animate_bang = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_doors__tsp_animate_breach = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_doors__tsp_animate_frag = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_doors__tsp_animate_peek = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_doors__tsp_animate_ready = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_doors__tsp_animate_shotgun = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_emotes = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_emotes__tsp_animate_bird = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_emotes__tsp_animate_dab = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_emotes__tsp_animate_heart = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_emotes__tsp_animate_horns = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_emotes__tsp_animate_jackoff = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_emotes__tsp_animate_loser = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_emotes__tsp_animate_mahalo = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_emotes__tsp_animate_ok = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_emotes__tsp_animate_paper = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_emotes__tsp_animate_peace = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_emotes__tsp_animate_rock = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_emotes__tsp_animate_scissors = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_emotes__tsp_animate_thumbsdown = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_emotes__tsp_animate_thumbsup = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_formations = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_formations__tsp_animate_abort = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_formations__tsp_animate_bang = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_formations__tsp_animate_breach = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_formations__tsp_animate_column = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_formations__tsp_animate_frag = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_formations__tsp_animate_halt = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_formations__tsp_animate_line = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_formations__tsp_animate_peek = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_formations__tsp_animate_ready = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_formations__tsp_animate_shotgun = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_formations__tsp_animate_wedge = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_inspect = false;
ace_interact_menu_moveToRoot__ACE_Animations__tsp_animate_suicide = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_atragmx_open = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_attach_Attach = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_attach_Detach = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ACE_CheckDogtags = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ACE_Chemlights = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_dagr_menu = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_dagr_menu__ace_dagr_toggle = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_flags = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_flags__ace_flags_furlFlag = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_goggles_wipeGlasses = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_gunbag_actions = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_gunbag_actions__ace_gunbag_status = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_gunbag_actions__ace_gunbag_weaponOff = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_gunbag_actions__ace_gunbag_weaponSwap = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_gunbag_actions__ace_gunbag_weaponTo = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_huntir_open = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_interaction_weaponAttachments = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_kestrel4500_open = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_kestrel4500_open__ace_kestrel4500_hide = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_kestrel4500_open__ace_kestrel4500_show = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_marker_flags = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_microdagr_configure = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_microdagr_configure__ace_microdagr_close = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_microdagr_configure__ace_microdagr_show = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_minedetector_metalDetector = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_minedetector_metalDetector__ace_minedetector_activate = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_minedetector_metalDetector__ace_minedetector_connectHeadphones = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_minedetector_metalDetector__ace_minedetector_deactivate = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_minedetector_metalDetector__ace_minedetector_disconnectHeadphones = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_mk6mortar_rangetable = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_overheating_CheckTemperature = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_overheating_CheckTemperatureSpareBarrels = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_overheating_CoolWeaponWithItem = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_overheating_SwapBarrel = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_overheating_UnJam = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ACE_PutInEarplugs = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ACE_PutOnEHP = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_rangecard_open = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_rangecard_open__ace_rangecard_makeCopy = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_rangecard_open__ace_rangecard_openCopy = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_reload_checkAmmo = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ACE_RemoveEarplugs = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ACE_RemoveEHP = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_scopes_adjustZero = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_scopes_resetZero = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_spottingscope_place = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ACE_TacticalLadders = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_trenches = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_trenches__ace_trenches_digEnvelopeBig = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_trenches__ace_trenches_digEnvelopeSmall = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_trenches__grad_trenches_digEnvelopeGiant = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_trenches__grad_trenches_digEnvelopeLongNameEmplacment = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_trenches__grad_trenches_digEnvelopeShort = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_trenches__grad_trenches_digEnvelopeVehicle = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_tripod_place = false;
ace_interact_menu_moveToRoot__ACE_Equipment__ace_ui_checkWeaponZeroing = false;
ace_interact_menu_moveToRoot__ACE_Equipment__bocr_main_cutLoweringLine = false;
ace_interact_menu_moveToRoot__ACE_Equipment__bocr_main_lower = false;
ace_interact_menu_moveToRoot__ACE_Equipment__bocr_main_onBack = false;
ace_interact_menu_moveToRoot__ACE_Equipment__bocr_main_onChest = false;
ace_interact_menu_moveToRoot__ACE_Equipment__bocr_main_swap = false;
ace_interact_menu_moveToRoot__ACE_Equipment__tsp_ace_earplug_insert = false;
ace_interact_menu_moveToRoot__ACE_Equipment__tsp_ace_earplug_remove = false;
ace_interact_menu_moveToRoot__ACE_Explosives__ACE_Cellphone = false;
ace_interact_menu_moveToRoot__ACE_Explosives__ACE_Place = false;
ace_interact_menu_moveToRoot__ace_gestures__ace_gestures_Advance = false;
ace_interact_menu_moveToRoot__ace_gestures__ace_gestures_CeaseFire = false;
ace_interact_menu_moveToRoot__ace_gestures__ace_gestures_Cover = false;
ace_interact_menu_moveToRoot__ace_gestures__ace_gestures_Engage = false;
ace_interact_menu_moveToRoot__ace_gestures__ace_gestures_Follow = false;
ace_interact_menu_moveToRoot__ace_gestures__ace_gestures_Forward = false;
ace_interact_menu_moveToRoot__ace_gestures__ace_gestures_Freeze = false;
ace_interact_menu_moveToRoot__ace_gestures__ace_gestures_Go = false;
ace_interact_menu_moveToRoot__ace_gestures__ace_gestures_Hold = false;
ace_interact_menu_moveToRoot__ace_gestures__ace_gestures_Point = false;
ace_interact_menu_moveToRoot__ace_gestures__ace_gestures_Regroup = false;
ace_interact_menu_moveToRoot__ace_gestures__ace_gestures_Stop = false;
ace_interact_menu_moveToRoot__ace_gestures__ace_gestures_Up = false;
ace_interact_menu_moveToRoot__ace_gestures__ace_gestures_Warning = false;
ace_interact_menu_moveToRoot__ACE_MapTools__ACE_MapToolsAlign = false;
ace_interact_menu_moveToRoot__ACE_MapTools__ACE_MapToolsAlign__ACE_MapToolsAlignCompass = false;
ace_interact_menu_moveToRoot__ACE_MapTools__ACE_MapToolsAlign__ACE_MapToolsAlignNorth = false;
ace_interact_menu_moveToRoot__ACE_MapTools__ACE_MapToolsAlign__ACE_MapToolsAlignToPlottingBoard = false;
ace_interact_menu_moveToRoot__ACE_MapTools__ACE_MapToolsAlign__ACE_MapToolsAlignToPlottingBoardAcrylic = false;
ace_interact_menu_moveToRoot__ACE_MapTools__ACE_MapToolsAlign__ACE_MapToolsAlignToPlottingBoardRuler = false;
ace_interact_menu_moveToRoot__ACE_MapTools__ACE_MapToolsHide = false;
ace_interact_menu_moveToRoot__ACE_MapTools__ACE_MapToolsShowNormal = false;
ace_interact_menu_moveToRoot__ACE_MapTools__ACE_MapToolsShowSmall = false;
ace_interact_menu_moveToRoot__ACE_Medical__ACE_ArmLeft = false;
ace_interact_menu_moveToRoot__ACE_Medical__ACE_ArmRight = false;
ace_interact_menu_moveToRoot__ACE_Medical__ACE_Head = false;
ace_interact_menu_moveToRoot__ACE_Medical__ACE_LegLeft = false;
ace_interact_menu_moveToRoot__ACE_Medical__ACE_LegRight = false;
ace_interact_menu_moveToRoot__ACE_Medical__ACE_Torso = false;
ace_interact_menu_moveToRoot__ACE_Medical__ACE_Torso__TriageCard = false;
ace_interact_menu_moveToRoot__ACE_PlottingBoardHide__ACE_PlottingBoardAlign = false;
ace_interact_menu_moveToRoot__ACE_PlottingBoardHide__ACE_PlottingBoardAlign__ACE_PlottingBoardAlignAcrylic = false;
ace_interact_menu_moveToRoot__ACE_PlottingBoardHide__ACE_PlottingBoardAlign__ACE_PlottingBoardAlignAcrylic__ACE_PlottingBoardAlignAcrylicMaptool = false;
ace_interact_menu_moveToRoot__ACE_PlottingBoardHide__ACE_PlottingBoardAlign__ACE_PlottingBoardAlignAcrylic__ACE_PlottingBoardAlignAcrylicUp = false;
ace_interact_menu_moveToRoot__ACE_PlottingBoardHide__ACE_PlottingBoardAlign__ACE_PlottingBoardAlignBoard = false;
ace_interact_menu_moveToRoot__ACE_PlottingBoardHide__ACE_PlottingBoardAlign__ACE_PlottingBoardAlignBoard__ACE_PlottingBoardAlignBoardMaptool = false;
ace_interact_menu_moveToRoot__ACE_PlottingBoardHide__ACE_PlottingBoardAlign__ACE_PlottingBoardAlignBoard__ACE_PlottingBoardAlignBoardUp = false;
ace_interact_menu_moveToRoot__ACE_PlottingBoardHide__ACE_PlottingBoardAlign__ACE_PlottingBoardAlignRuler = false;
ace_interact_menu_moveToRoot__ACE_PlottingBoardHide__ACE_PlottingBoardAlign__ACE_PlottingBoardAlignRuler__ACE_PlottingBoardAlignRulerMaptool = false;
ace_interact_menu_moveToRoot__ACE_PlottingBoardHide__ACE_PlottingBoardAlign__ACE_PlottingBoardAlignRuler__ACE_PlottingBoardAlignRulerUp = false;
ace_interact_menu_moveToRoot__ACE_PlottingBoardHide__ACE_PlottingBoardRulerHide = false;
ace_interact_menu_moveToRoot__ACE_PlottingBoardHide__ACE_PlottingBoardRulerShow = false;
ace_interact_menu_moveToRoot__ACE_PlottingBoardHide__ACE_PlottingBoardWipe = false;
ace_interact_menu_moveToRoot__ACE_TeamManagement__ACE_BecomeLeader = false;
ace_interact_menu_moveToRoot__ACE_TeamManagement__ACE_JoinTeamBlue = false;
ace_interact_menu_moveToRoot__ACE_TeamManagement__ACE_JoinTeamGreen = false;
ace_interact_menu_moveToRoot__ACE_TeamManagement__ACE_JoinTeamMain = false;
ace_interact_menu_moveToRoot__ACE_TeamManagement__ACE_JoinTeamRed = false;
ace_interact_menu_moveToRoot__ACE_TeamManagement__ACE_JoinTeamYellow = false;
ace_interact_menu_moveToRoot__ACE_TeamManagement__ACE_LeaveGroup = false;
ace_interact_menu_moveToRoot__ACE_TeamManagement__ACE_remoteTeamManagement = false;
ace_interact_menu_moveToRoot__ACE_TeamManagement__ACE_RenameGroup = false;
ace_interact_menu_moveToRoot__ACE_TeamManagement__diwako_dui_buddy_buddy_action_team_remove = false;

// ACE Kill Tracker
force force ace_killtracker_showCrewKills = true;
force force ace_killtracker_showMedicalWounds = 2;
force force ace_killtracker_trackAI = true;

// ACE Logistics
ace_cargo_carryAfterUnload = true;
ace_cargo_checkSizeInteraction = false;
force force ace_cargo_enable = true;
force force ace_cargo_enableDeploy = true;
ace_cargo_enableRename = true;
force ace_cargo_loadTimeCoefficient = 1;
ace_cargo_openAfterUnload = 0;
force ace_cargo_paradropTimeCoefficent = 1;
force ace_rearm_distance = 25;
force force ace_rearm_enabled = true;
force ace_rearm_level = 1;
force force ace_rearm_supply = 0;
force ace_refuel_cargoRate = 10;
force force ace_refuel_enabled = true;
force ace_refuel_hoseLength = 25;
force force ace_refuel_progressDuration = 2;
force ace_refuel_rate = 1;
force force ace_towing_addRopeToVehicleInventory = false;

// ACE Magazine Repack
ace_magazinerepack_repackAnimation = true;
ace_magazinerepack_repackLoadedMagazines = true;
force force ace_magazinerepack_timePerAmmo = 1.5;
force force ace_magazinerepack_timePerBeltLink = 8;
force force ace_magazinerepack_timePerMagazine = 2;

// ACE Map
force ace_map_BFT_Enabled = false;
force ace_map_BFT_HideAiGroups = true;
force ace_map_BFT_Interval = 1;
force ace_map_BFT_ShowPlayerNames = false;
force force ace_map_DefaultChannel = 1;
force ace_map_mapGlow = true;
force ace_map_mapIllumination = true;
force force ace_map_mapLimitZoom = false;
force ace_map_mapShake = true;
force ace_map_mapShowCursorCoordinates = false;
force force ace_markers_moveRestriction = 0;
force force ace_markers_timestampEnabled = true;
force force ace_markers_timestampFormat = "HH:MM";
force force ace_markers_timestampHourFormat = 24;
force force ace_markers_timestampTimezone = 0;
ace_markers_TimestampUTCMinutesOffset = 0;
force force ace_markers_timestampUTCOffset = 0;

// ACE Map Gestures
force force ace_map_gestures_allowCurator = true;
force force ace_map_gestures_allowSpectator = true;
force force ace_map_gestures_briefingMode = 0;
force force ace_map_gestures_defaultColor = [1,0.88,0,0.7];
force force ace_map_gestures_defaultLeadColor = [1,0,0,0.95];
force force ace_map_gestures_enabled = true;
force force ace_map_gestures_interval = 0.03;
force force ace_map_gestures_maxRange = 20;
force force ace_map_gestures_maxRangeCamera = 20;
ace_map_gestures_nameTextColor = [0.2,0.2,0.2,0.3];
force force ace_map_gestures_onlyShowFriendlys = false;

// ACE Map Tools
ace_maptools_drawStraightLines = true;
ace_maptools_plottingBoardAllowChannelDrawing = 1;
ace_maptools_rotateModifierKey = 1;

// ACE Medical
force force ace_medical_ai_enabledFor = 0;
force force ace_medical_ai_requireItems = 0;
force ace_medical_AIDamageThreshold = 0.1;
force ace_medical_alternateArmorPenetration = false;
force ace_medical_bleedingCoefficient = 0.2;
force force ace_medical_blood_bloodLifetime = 300;
force ace_medical_blood_enabledFor = 2;
force force ace_medical_blood_maxBloodObjects = 500;
force ace_medical_deathChance = 1;
force force ace_medical_dropWeaponUnconsciousChance = 0;
force ace_medical_enableVehicleCrashes = true;
force ace_medical_fatalDamageSource = 2;
force ace_medical_fractureChance = 0.2;
force ace_medical_fractures = 2;
force ace_medical_ivFlowRate = 2;
force ace_medical_limbDamageThreshold = 5;
force ace_medical_limping = 1;
force ace_medical_painCoefficient = 1;
force ace_medical_painUnconsciousChance = 0.25;
force ace_medical_painUnconsciousThreshold = 0.5;
force ace_medical_playerDamageThreshold = 1.4;
force ace_medical_spontaneousWakeUpChance = 0.7;
force force ace_medical_spontaneousWakeUpEpinephrineBoost = 2.5;
force ace_medical_statemachine_AIUnconsciousness = true;
force ace_medical_statemachine_cardiacArrestBleedoutEnabled = true;
force ace_medical_statemachine_cardiacArrestTime = 900;
force force ace_medical_statemachine_fatalInjuriesAI = 0;
force ace_medical_statemachine_fatalInjuriesPlayer = 2;
force ace_medical_useLimbDamage = 0;
force force ace_medical_vitals_simulateSpO2 = false;

// ACE Medical Interface
ace_medical_feedback_bloodVolumeEffectType = 0;
ace_medical_feedback_enableHUDIndicators = true;
ace_medical_feedback_painEffectType = 2;
ace_medical_gui_bloodLossColor_0 = [0,0,0,1];
ace_medical_gui_bloodLossColor_1 = [1,0.95,0.64,1];
ace_medical_gui_bloodLossColor_2 = [1,0.87,0.46,1];
ace_medical_gui_bloodLossColor_3 = [1,0.8,0.33,1];
ace_medical_gui_bloodLossColor_4 = [1,0.72,0.24,1];
ace_medical_gui_bloodLossColor_5 = [1,0.63,0.15,1];
ace_medical_gui_bloodLossColor_6 = [1,0.54,0.08,1];
ace_medical_gui_bloodLossColor_7 = [1,0.43,0.02,1];
ace_medical_gui_bloodLossColor_8 = [1,0.3,0,1];
ace_medical_gui_bloodLossColor_9 = [1,0,0,1];
ace_medical_gui_bodyPartOutlineColor = [1,1,1,1];
ace_medical_gui_damageColor_0 = [0,0,0,1];
ace_medical_gui_damageColor_1 = [0.75,0.95,1,1];
ace_medical_gui_damageColor_2 = [0.62,0.86,1,1];
ace_medical_gui_damageColor_3 = [0.54,0.77,1,1];
ace_medical_gui_damageColor_4 = [0.48,0.67,1,1];
ace_medical_gui_damageColor_5 = [0.42,0.57,1,1];
ace_medical_gui_damageColor_6 = [0.37,0.47,1,1];
ace_medical_gui_damageColor_7 = [0.31,0.36,1,1];
ace_medical_gui_damageColor_8 = [0.22,0.23,1,1];
ace_medical_gui_damageColor_9 = [0,0,1,1];
ace_medical_gui_enableActions = 0;
force force ace_medical_gui_enableMedicalMenu = 1;
force force ace_medical_gui_enableSelfActions = true;
ace_medical_gui_interactionMenuShowTriage = 1;
force force ace_medical_gui_maxDistance = 4;
force force ace_medical_gui_openAfterTreatment = true;
ace_medical_gui_peekMedicalInfoReleaseDelay = 1;
ace_medical_gui_peekMedicalOnHit = false;
ace_medical_gui_peekMedicalOnHitDuration = 1;
force ace_medical_gui_showBleeding = 2;
force ace_medical_gui_showBloodlossEntry = true;
force ace_medical_gui_showDamageEntry = false;
ace_medical_gui_tourniquetWarning = false;

// ACE Medical Treatment
force force ace_medical_treatment_advancedBandages = 2;
force force ace_medical_treatment_advancedDiagnose = 2;
force force ace_medical_treatment_advancedMedication = true;
force force ace_medical_treatment_allowBodyBagUnconscious = false;
force force ace_medical_treatment_allowGraveDigging = 0;
force ace_medical_treatment_allowLitterCreation = true;
force force ace_medical_treatment_allowSelfIV = 1;
force ace_medical_treatment_allowSelfPAK = 0;
force ace_medical_treatment_allowSelfStitch = 0;
force ace_medical_treatment_allowSharedEquipment = 0;
force force ace_medical_treatment_bandageEffectiveness = 1;
force force ace_medical_treatment_bandageRollover = true;
force force ace_medical_treatment_clearTrauma = 1;
force ace_medical_treatment_consumePAK = 1;
force force ace_medical_treatment_consumeSurgicalKit = 0;
force ace_medical_treatment_convertItems = 0;
force force ace_medical_treatment_cprSuccessChanceMax = 0.75;
force force ace_medical_treatment_cprSuccessChanceMin = 0.6;
force force ace_medical_treatment_graveDiggingMarker = true;
force force ace_medical_treatment_holsterRequired = 0;
force force ace_medical_treatment_litterCleanupDelay = 150;
force force ace_medical_treatment_locationAdenosine = 0;
force force ace_medical_treatment_locationEpinephrine = 0;
force force ace_medical_treatment_locationIV = 0;
force force ace_medical_treatment_locationMorphine = 0;
force force ace_medical_treatment_locationPAK = 0;
force force ace_medical_treatment_locationsBoostTraining = true;
force force ace_medical_treatment_locationSplint = 0;
force force ace_medical_treatment_locationSurgicalKit = 0;
force force ace_medical_treatment_maxLitterObjects = 50;
force force ace_medical_treatment_medicAdenosine = 0;
force force ace_medical_treatment_medicEpinephrine = 0;
force force ace_medical_treatment_medicIV = 1;
force force ace_medical_treatment_medicMorphine = 0;
force force ace_medical_treatment_medicPAK = 1;
force force ace_medical_treatment_medicSplint = 0;
force force ace_medical_treatment_medicSurgicalKit = 1;
force force ace_medical_treatment_numericalPulse = 1;
force force ace_medical_treatment_timeCoefficientPAK = 1;
force force ace_medical_treatment_treatmentTimeAutoinjector = 5;
force force ace_medical_treatment_treatmentTimeBodyBag = 15;
force force ace_medical_treatment_treatmentTimeCoeffZeus = 0;
force force ace_medical_treatment_treatmentTimeCPR = 15;
force force ace_medical_treatment_treatmentTimeGrave = 30;
force force ace_medical_treatment_treatmentTimeIV = 7;
force force ace_medical_treatment_treatmentTimeSplint = 7;
force force ace_medical_treatment_treatmentTimeTourniquet = 7;
force force ace_medical_treatment_treatmentTimeTrainedAutoinjector = 5;
force force ace_medical_treatment_treatmentTimeTrainedIV = 12;
force force ace_medical_treatment_treatmentTimeTrainedSplint = 7;
force force ace_medical_treatment_treatmentTimeTrainedTourniquet = 7;
force force ace_medical_treatment_woundReopenChance = 1;
force force ace_medical_treatment_woundStitchTime = 5;

// ACE Name Tags
force force ace_nametags_ambientBrightnessAffectViewDist = 1;
ace_nametags_defaultNametagColor = [0.77,0.51,0.08,1];
ace_nametags_nametagColorBlue = [0.67,0.67,1,1];
ace_nametags_nametagColorGreen = [0.67,1,0.67,1];
ace_nametags_nametagColorMain = [1,1,1,1];
ace_nametags_nametagColorRed = [1,0.67,0.67,1];
ace_nametags_nametagColorYellow = [1,1,0.67,1];
force force ace_nametags_playerNamesMaxAlpha = 0.5;
force force ace_nametags_playerNamesViewDistance = 10;
force ace_nametags_showCursorTagForVehicles = true;
force ace_nametags_showNamesForAI = false;
force ace_nametags_showPlayerNames = 1;
force ace_nametags_showPlayerRanks = true;
ace_nametags_showSoundWaves = 1;
ace_nametags_showVehicleCrewInfo = true;
ace_nametags_tagSize = 2;

// ACE Nightvision
force ace_nightvision_aimDownSightsBlur = 0.1;
force force ace_nightvision_disableNVGsWithSights = false;
force ace_nightvision_effectScaling = 0.3;
force ace_nightvision_fogScaling = 0.2;
force ace_nightvision_noiseScaling = 0.2;
force ace_nightvision_shutterEffects = false;

// ACE Overheating
force force ace_overheating_cookoffCoef = 0;
force ace_overheating_coolingCoef = 1;
force force ace_overheating_displayTextOnJam = true;
force ace_overheating_enabled = true;
force ace_overheating_heatCoef = 1;
force ace_overheating_jamChanceCoef = 1;
force ace_overheating_overheatingDispersion = true;
force ace_overheating_overheatingRateOfFire = true;
ace_overheating_particleEffectsAndDispersionDistance = 3000;
ace_overheating_showParticleEffects = true;
ace_overheating_showParticleEffectsForEveryone = false;
force ace_overheating_suppressorCoef = 1;
force force ace_overheating_unJamFailChance = 0.5;
force force ace_overheating_unJamOnreload = false;
force force ace_overheating_unJamOnSwapBarrel = true;

// ACE Pointing
force force ace_finger_enabled = true;
ace_finger_indicatorColor = [1,0.503034,0,1];
force force ace_finger_indicatorForSelf = true;
force force ace_finger_maxRange = 5.01867;
force force ace_finger_proximityScaling = false;
force force ace_finger_sizeCoef = 1;

// ACE Pylons
force force ace_pylons_enabledForZeus = true;
force ace_pylons_enabledFromAmmoTrucks = true;
force ace_pylons_rearmNewPylons = true;
force force ace_pylons_requireEngineer = false;
force force ace_pylons_requireToolkit = false;
force force ace_pylons_searchDistance = 25;
force ace_pylons_timePerPylon = 5;

// ACE Quick Mount
force force ace_quickmount_distance = 5;
force force ace_quickmount_enabled = true;
force force ace_quickmount_enableMenu = 3;
ace_quickmount_priority = 0;
force force ace_quickmount_speed = 20;

// ACE Repair
force ace_repair_addSpareParts = true;
force force ace_repair_autoShutOffEngineWhenStartingRepair = true;
force force ace_repair_consumeItem_toolKit = 0;
force force ace_repair_displayTextOnRepair = true;
force ace_repair_enabled = true;
force ace_repair_engineerSetting_fullRepair = 1;
force ace_repair_engineerSetting_repair = 1;
force force ace_repair_engineerSetting_wheel = 0;
force force ace_repair_fullRepairLocation = 3;
force ace_repair_fullRepairRequiredItems = ["ace_repair_anyToolKit"];
force ace_repair_locationsBoostTraining = false;
force force ace_repair_miscRepairRequiredItems = ["ace_repair_anyToolKit"];
force ace_repair_miscRepairTime = 15;
force force ace_repair_patchWheelEnabled = 0;
force force ace_repair_patchWheelLocation = ["ground","vehicle"];
force ace_repair_patchWheelMaximumRepair = 0.4;
force force ace_repair_patchWheelRequiredItems = ["ace_repair_anyToolKit"];
force ace_repair_patchWheelTime = 5;
force ace_repair_repairDamageThreshold = 0.5;
force ace_repair_repairDamageThreshold_engineer = 0.5;
force ace_repair_timeCoefficientFullRepair = 0.3;
force ace_repair_wheelChangeTime = 10;
force force ace_repair_wheelRepairRequiredItems = [];

// ACE Respawn
force ace_respawn_removeDeadBodiesDisconnected = false;
force force ace_respawn_savePreDeathGear = false;

// ACE Scopes
force force ace_scopes_correctZeroing = true;
force force ace_scopes_deduceBarometricPressureFromTerrainAltitude = true;
force force ace_scopes_defaultZeroRange = 100;
force force ace_scopes_enabled = true;
force force ace_scopes_forceUseOfAdjustmentTurrets = true;
ace_scopes_inScopeAdjustment = false;
force force ace_scopes_overwriteZeroRange = true;
force force ace_scopes_simplifiedZeroing = false;
ace_scopes_useLegacyUI = false;
force force ace_scopes_zeroReferenceBarometricPressure = 1013.25;
force force ace_scopes_zeroReferenceHumidity = 0;
force force ace_scopes_zeroReferenceTemperature = 15;

// ACE Sitting
force force acex_sitting_enable = true;

// ACE Spectator
force ace_spectator_enableAI = true;
ace_spectator_maxFollowDistance = 5;
force force ace_spectator_restrictModes = 0;
force force ace_spectator_restrictVisions = 0;

// ACE Switch Units
force ace_switchunits_enableSafeZone = false;
force ace_switchunits_enableSwitchUnits = false;
force ace_switchunits_safeZoneRadius = 100;
force ace_switchunits_switchToCivilian = false;
force ace_switchunits_switchToEast = false;
force ace_switchunits_switchToIndependent = false;
force ace_switchunits_switchToWest = false;

// ACE Trenches
force force ace_trenches_bigEnvelopeDigDuration = 25;
force force ace_trenches_bigEnvelopeRemoveDuration = 15;
force force ace_trenches_smallEnvelopeDigDuration = 20;
force force ace_trenches_smallEnvelopeRemoveDuration = 12;

// ACE Uncategorized
force ace_fastroping_autoAddFRIES = false;
force force ace_fastroping_requireRopeItems = true;
ace_flags_enableCarrying = true;
ace_flags_enablePlacing = true;
force force ace_gunbag_swapGunbagEnabled = true;
force force ace_hitreactions_minDamageToTrigger = 0.122781;
force force ace_hitreactions_weaponDropChanceArmHitAI = 0;
force force ace_hitreactions_weaponDropChanceArmHitPlayer = 0;
ace_inventory_inventoryDisplaySize = 1;
force force ace_laser_dispersionCount = 2;
force ace_laser_showLaserOnMap = 1;
force force ace_marker_flags_placeAnywhere = true;
force ace_microdagr_mapDataAvailable = 2;
force ace_microdagr_waypointPrecision = 3;
force force ace_noradio_enabled = true;
ace_optionsmenu_showNewsOnMainMenu = false;
force ace_overpressure_backblastDistanceCoefficient = 1;
force ace_overpressure_overpressureDistanceCoefficient = 1;
force force ace_parachute_failureChance = 0;
force force ace_parachute_hideAltimeter = true;
force force ace_tagging_quickTag = 1;

// ACE User Interface
force force ace_ui_allowSelectiveUI = false;
force ace_ui_ammoCount = false;
force ace_ui_ammoType = true;
force ace_ui_commandMenu = true;
force ace_ui_enableSpeedIndicator = true;
force ace_ui_firingMode = true;
force ace_ui_groupBar = true;
force ace_ui_gunnerAmmoCount = true;
force ace_ui_gunnerAmmoType = true;
force ace_ui_gunnerFiringMode = true;
force ace_ui_gunnerLaunchableCount = true;
force ace_ui_gunnerLaunchableName = true;
force ace_ui_gunnerMagCount = true;
force ace_ui_gunnerWeaponLowerInfoBackground = true;
force ace_ui_gunnerWeaponName = true;
force ace_ui_gunnerWeaponNameBackground = true;
force ace_ui_gunnerZeroing = true;
ace_ui_hideDefaultActionIcon = false;
force ace_ui_magCount = true;
force ace_ui_soldierVehicleWeaponInfo = true;
force ace_ui_staminaBar = true;
force ace_ui_stance = true;
force ace_ui_throwableCount = true;
force ace_ui_throwableName = true;
force ace_ui_vehicleAltitude = true;
force ace_ui_vehicleCompass = true;
force ace_ui_vehicleDamage = true;
force ace_ui_vehicleFuelBar = true;
force ace_ui_vehicleInfoBackground = true;
force ace_ui_vehicleName = true;
force ace_ui_vehicleNameBackground = true;
force ace_ui_vehicleRadar = true;
force ace_ui_vehicleSpeed = true;
force ace_ui_weaponLowerInfoBackground = true;
force ace_ui_weaponName = true;
force ace_ui_weaponNameBackground = true;
force ace_ui_zeroing = true;

// ACE Vehicle Lock
force ace_vehiclelock_defaultLockpickStrength = 10;
force ace_vehiclelock_lockVehicleInventory = true;
force force ace_vehiclelock_vehicleStartingLockState = -1;

// ACE Vehicles
force ace_novehicleclanlogo_enabled = false;
ace_vehicles_hideEjectAction = true;
force force ace_vehicles_keepEngineRunning = false;
ace_vehicles_speedLimiterStep = 5;
force force ace_viewports_enabled = true;

// ACE View Distance Limiter
force force ace_viewdistance_enabled = true;
force ace_viewdistance_limitViewDistance = 8000;
ace_viewdistance_objectViewDistanceCoeff = 0;
ace_viewdistance_viewDistanceAirVehicle = 5000;
ace_viewdistance_viewDistanceLandVehicle = 2500;
ace_viewdistance_viewDistanceOnFoot = 2000;

// ACE View Restriction
force force acex_viewrestriction_mode = 3;
force acex_viewrestriction_modeSelectiveAir = 0;
force acex_viewrestriction_modeSelectiveFoot = 0;
force acex_viewrestriction_modeSelectiveLand = 0;
force acex_viewrestriction_modeSelectiveSea = 0;
acex_viewrestriction_preserveView = false;

// ACE Volume
acex_volume_enabled = false;
acex_volume_fadeDelay = 0;
acex_volume_lowerInVehicles = false;
acex_volume_reduction = 0;
acex_volume_remindIfLowered = false;
acex_volume_showNotification = false;

// ACE Weapons
force force ace_common_persistentLaserEnabled = true;
force force ace_reload_displayText = true;
force force ace_reload_showCheckAmmoSelf = true;
ace_reloadlaunchers_displayStatusText = true;
force force ace_weaponselect_displayText = true;

// ACE Weather
force ace_weather_enabled = false;
force force ace_weather_showCheckAirTemperature = true;
force force ace_weather_updateInterval = 60;
force ace_weather_windSimulation = false;

// ACE Wind Deflection
force ace_winddeflection_enabled = true;
force force ace_winddeflection_simulationInterval = 0.05;
force ace_winddeflection_vehicleEnabled = true;

// ACE Zeus
force force ace_zeus_autoAddObjects = true;
force force ace_zeus_canCreateZeus = 0;
force force ace_zeus_radioOrdnance = false;
force force ace_zeus_remoteWind = false;
force force ace_zeus_revealMines = 0;
force force ace_zeus_zeusAscension = false;
force force ace_zeus_zeusBird = false;

// AET Common
force AET_common_SET_antiBounceSmokeGL_enabled = true;
force AET_common_SET_compareAddonOptions_mode = "ADMIN";
force AET_common_SET_dynamicGroups = true;

// AET Disclaimer
force AET_disclaimer_SET_customIntro_path = "AET_Scripts\AET_customIntro.sqf";
force AET_disclaimer_SET_disable_for_admin = true;
force AET_disclaimer_SET_disable_in_editor = true;
force AET_disclaimer_SET_disableSafetydistance = 250;
force AET_disclaimer_SET_disableSafetymode = "DISTANCE";
force AET_disclaimer_SET_disableSafetytime = 30;
force AET_disclaimer_SET_enabled = true;
force AET_disclaimer_SET_enabled_logo = true;
force AET_disclaimer_SET_logoPath = "<img size='8' shadow='0' image='z\aet\addons\disclaimer\data\opengroup_sponsor.paa'/>";
force AET_disclaimer_SET_text = "<t size='2'>Disclaimer: This is a work of fiction. Names, characters, businesses, places, events and incidents are either the products of the author's imagination or used in a fictitious manner. Any resemblance to actual persons, living or dead, or actual events is purely coincidental.</t>";

// AET Loadout Handler
force AET_loadout_handler_SET_allowArsenalOverfilling = true;
force AET_loadout_handler_SET_backpackInventory = "[  
  [""ACE_EntrenchingTool"", 0],  
  [""ACE_IR_Strobe_Item"", 0]  
 ]";
force AET_loadout_handler_SET_binocularsForEveryone_className = "Binocular";
force AET_loadout_handler_SET_binocularsForEveryone_enabled = true;
force AET_loadout_handler_SET_compassesForEveryone_className = "ItemCompass";
force AET_loadout_handler_SET_compassesForEveryone_enabled = true;
force AET_loadout_handler_SET_enabled = true;
force AET_loadout_handler_SET_enableOnRespawn = true;
force AET_loadout_handler_SET_GPSsForEveryone_className = "ItemGPS";
force AET_loadout_handler_SET_GPSsForEveryone_enabled = true;
force AET_loadout_handler_SET_handWatchesForEveryone_className = "ItemWatch";
force AET_loadout_handler_SET_handWatchesForEveryone_enabled = true;
force AET_loadout_handler_SET_mapsForEveryone_className = "ItemMap";
force AET_loadout_handler_SET_mapsForEveryone_enabled = true;
force AET_loadout_handler_SET_radioProgrammersIfNeeded_enabled = true;
force AET_loadout_handler_SET_radiosForEveryone_className = "TFAR_anprc148jem";
force AET_loadout_handler_SET_radiosForEveryone_enabled = true;
force AET_loadout_handler_SET_radiosInNeedOfProgrammer = "[""TFAR_anprc154"", ""TFAR_pnr1000a"", ""TFAR_rf7800str""]";
force AET_loadout_handler_SET_TFARCompatibleRadios = "[""gm_radio_r126"", ""gm_radio_sem52a"", ""vn_o_item_radio_m252"", ""vn_b_item_radio_urc10"", ""TFAR_anprc148jem"", ""TFAR_anprc152"", ""TFAR_fadak"", ""TFAR_anprc154"", ""TFAR_pnr1000a"", ""TFAR_rf7800str""]";
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
force AET_loadout_handler_SET_vestInventory = "[  
  [""SmokeShell"", 0],  
  [""HandGrenade"", 0]  
 ]";

// AET Plan Importer
force AET_PI_core_SET_enabled = true;
force AET_PI_core_SET_groupLeaders_enabled = true;
force AET_PI_core_SET_importChannel = -1;
force AET_PI_core_SET_rankBased_mode = 10;

// AET Trigger Marker
force force AET_trigger_marker_SET_visibilityMode = 1;

// Armor Modifier - ACE
force armor_modifier_ace_main_hitPointMultiplierSetting_AI_chest = "[1, 0, 0]";
force armor_modifier_ace_main_hitPointMultiplierSetting_AI_head = "[1, 0, 0]";
force armor_modifier_ace_main_hitPointMultiplierSetting_AI_limb = "[1, 0, 0]";
force armor_modifier_ace_main_hitPointMultiplierSetting_Player_chest = "[1, 13.5, 13.5]";
force armor_modifier_ace_main_hitPointMultiplierSetting_Player_head = "[1, 0, 0]";
force armor_modifier_ace_main_hitPointMultiplierSetting_Player_limb = "[1, 0, 0]";

// Backpack On Chest
force force bocr_main_disabled = false;
force bocr_main_walk = true;

// Community Base Addons
cba_diagnostic_ConsoleIndentType = -1;
force force cba_diagnostic_watchInfoRefreshRate = 0.2;
cba_disposable_dropUsedLauncher = 2;
force cba_disposable_replaceDisposableLauncher = true;
cba_events_repetitionMode = 1;
force force cba_network_loadoutValidation = 2;
cba_optics_usePipOptics = true;
cba_quicktime_qteShorten = false;
cba_ui_notifyLifetime = 4;
cba_ui_StorePasswords = 1;

// CUP
force force CUP_CheckCfgPatches = false;
force force CUP_Vehicles_PreventBarrelClip = false;

// CUP Static Weapons
force force CUP_staticWeapons_allowMovement = false;
force force CUP_staticWeapons_allowRotation = true;

// Diwako's Punish unknown weapon
force diwako_unknownwp_add_weapons = "";
force force diwako_unknownwp_briefing = true;
force diwako_unknownwp_cooldown = 60;
force diwako_unknownwp_dispersion_add = 25;
force diwako_unknownwp_enable = true;
force diwako_unknownwp_jam_explosion = 2;
force diwako_unknownwp_jamchance_add = 1.5;
force diwako_unknownwp_propagation = true;
force diwako_unknownwp_reload_failure = 25;

// DUI - Squad Radar - Indicators
force diwako_dui_indicators_crew_range_enabled = false;
diwako_dui_indicators_fov_scale = false;
diwako_dui_indicators_icon_buddy = true;
diwako_dui_indicators_icon_leader = true;
diwako_dui_indicators_icon_medic = true;
diwako_dui_indicators_range = 20;
diwako_dui_indicators_range_crew = 300;
diwako_dui_indicators_range_scale = false;
force diwako_dui_indicators_rangeLimit = 100;
diwako_dui_indicators_show = true;
diwako_dui_indicators_size = 1;
diwako_dui_indicators_style = "standard";
diwako_dui_indicators_useACENametagsRange = true;

// DUI - Squad Radar - Line Compass
diwako_dui_linecompass_ACEFingeringColor = [1,0.66,0,1];
force diwako_dui_linecompass_AllowNumericDrawBearing = true;
diwako_dui_linecompass_CompassAvailableShown = true;
diwako_dui_linecompass_compassRange = 35;
force diwako_dui_linecompass_compassRangeLimit = 50;
diwako_dui_linecompass_CustomWaypointColor = [0,0,0.87,1];
diwako_dui_linecompass_DefaultIconColor = [0.5,0.87,0.5,1];
diwako_dui_linecompass_DrawBearing = 2;
diwako_dui_linecompass_Enabled = true;
diwako_dui_linecompass_enableOcclusion = false;
diwako_dui_linecompass_IconOutline = 0;
diwako_dui_linecompass_occlusionFadeSpeed = 3.5;
diwako_dui_linecompass_showSpeaking = true;
diwako_dui_linecompass_SwapOrder = false;
diwako_dui_linecompass_WaypointColor = [0,0,0.87,1];

// DUI - Squad Radar - Main
diwako_dui_ace_hide_interaction = true;
diwako_dui_colors = "standard";
diwako_dui_font = "RobotoCondensed";
diwako_dui_icon_style = "standard";
diwako_dui_main_hide_dialog = true;
diwako_dui_main_hide_ui_by_default = false;
diwako_dui_main_squadBlue = [0,0,1,1];
diwako_dui_main_squadGreen = [0,1,0,1];
diwako_dui_main_squadMain = [1,1,1,1];
diwako_dui_main_squadRed = [1,0,0,1];
diwako_dui_main_squadYellow = [1,1,0,1];
diwako_dui_main_trackingColor = [0.93,0.26,0.93,1];
diwako_dui_reset_ui_pos = false;

// DUI - Squad Radar - Nametags
diwako_dui_nametags_customRankStyle = "[[""PRIVATE"",""CORPORAL"",""SERGEANT"",""LIEUTENANT"",""CAPTAIN"",""MAJOR"",""COLONEL""],[""Pvt."",""Cpl."",""Sgt."",""Lt."",""Capt."",""Maj."",""Col.""]]";
diwako_dui_nametags_deadColor = [0.2,0.2,0.2,1];
diwako_dui_nametags_deadRenderDistance = 3.5;
diwako_dui_nametags_drawRank = true;
diwako_dui_nametags_enabled = true;
diwako_dui_nametags_enableFOVBoost = true;
diwako_dui_nametags_enableOcclusion = true;
diwako_dui_nametags_fadeInTime = 0.05;
diwako_dui_nametags_fadeOutTime = 0.5;
diwako_dui_nametags_fontGroup = "RobotoCondensedLight";
diwako_dui_nametags_fontGroupNameSize = 8;
diwako_dui_nametags_fontName = "RobotoCondensedBold";
diwako_dui_nametags_fontNameSize = 10;
diwako_dui_nametags_groupColor = [1,1,1,1];
diwako_dui_nametags_groupFontShadow = 1;
diwako_dui_nametags_groupNameOtherGroupColor = [0.6,0.85,0.6,1];
diwako_dui_nametags_nameFontShadow = 1;
diwako_dui_nametags_nameOtherGroupColor = [0.2,1,0,1];
diwako_dui_nametags_rankNameStyle = "default";
diwako_dui_nametags_renderDistance = 40;
diwako_dui_nametags_showUnconAsDead = true;
diwako_dui_nametags_useLIS = true;
diwako_dui_nametags_useSideIsFriendly = true;

// DUI - Squad Radar - Radar
diwako_dui_compass_hide_alone_group = false;
diwako_dui_compass_hide_blip_alone_group = false;
diwako_dui_compass_icon_scale = 1;
diwako_dui_compass_opacity = 1;
diwako_dui_compass_style = ["\z\diwako_dui\addons\radar\UI\compass_styles\standard\compass_limited.paa","\z\diwako_dui\addons\radar\UI\compass_styles\standard\compass.paa"];
diwako_dui_compassRange = 35;
diwako_dui_compassRefreshrate = 0;
diwako_dui_dir_showMildot = false;
diwako_dui_dir_size = 1.25;
diwako_dui_distanceWarning = 3;
diwako_dui_enable_compass = true;
diwako_dui_enable_compass_dir = 1;
diwako_dui_enable_occlusion = false;
diwako_dui_enable_occlusion_cone = 360;
diwako_dui_hudScaling = 0.833333;
diwako_dui_namelist = true;
diwako_dui_namelist_bg = 0;
diwako_dui_namelist_only_buddy_icon = false;
diwako_dui_namelist_size = 0.760726;
diwako_dui_namelist_text_shadow = 2;
diwako_dui_namelist_width = 215;
diwako_dui_radar_ace_finger = true;
force diwako_dui_radar_ace_medic = true;
diwako_dui_radar_always_show_unit_numbers = false;
diwako_dui_radar_compassRangeCrew = 500;
force diwako_dui_radar_compassRangeLimit = 50;
diwako_dui_radar_dir_padding = 25;
diwako_dui_radar_dir_shadow = 2;
diwako_dui_radar_enable_seat_icons = 2;
diwako_dui_radar_group_by_vehicle = false;
diwako_dui_radar_icon_opacity = 1;
diwako_dui_radar_icon_opacity_no_player = true;
force diwako_dui_radar_icon_priority_setting = 1;
diwako_dui_radar_icon_scale_crew = 6;
diwako_dui_radar_leadingZeroes = false;
diwako_dui_radar_namelist_hideWhenLeader = false;
diwako_dui_radar_namelist_vertical_spacing = 1.2;
diwako_dui_radar_occlusion_fade_in_time = 1;
diwako_dui_radar_occlusion_fade_time = 10;
diwako_dui_radar_pointer_color = [1,0.5,0,1];
diwako_dui_radar_pointer_style = "standard";
diwako_dui_radar_show_cardinal_points = true;
diwako_dui_radar_showSpeaking = true;
diwako_dui_radar_showSpeaking_radioOnly = false;
diwako_dui_radar_showSpeaking_replaceIcon = true;
force diwako_dui_radar_sortType = "fireteam2";
force diwako_dui_radar_sqlFirst = false;
force diwako_dui_radar_syncGroup = false;
force diwako_dui_radar_vehicleCompassEnabled = false;
diwako_dui_use_layout_editor = false;

// Enhanced Movement Rework
force emr_main_allowClimbOnStandingUnits = false;
force emr_main_allowMidairClimbing = true;
force force emr_main_animSpeedCoef = 1;
force emr_main_animSpeedStaminaCoef = 0.4;
force emr_main_assistDuty = 1.5;
force emr_main_assistHeight = 1;
force emr_main_blacklistStr = "";
force emr_main_climbingEnabled = true;
force emr_main_climbOnDuty = 3.4;
force emr_main_climbOverDuty = 3;
force emr_main_dropDuty = 0.7;
emr_main_dropViewElevation = -0.7;
emr_main_enableWalkableSurface = true;
force emr_main_enableWeightCheck = false;
emr_main_hintType = 2;
emr_main_interactBehaviorInVehicle = "DISMOUNT";
force emr_main_jumpDuty = 1;
force emr_main_jumpForwardVelocity = 1.2;
force emr_main_jumpingEnabled = true;
force emr_main_jumpingLoadCoefficient = 1;
force emr_main_jumpVelocity = 3.4;
force emr_main_maxClimbHeight = 2.6;
force emr_main_maxDropHeight = 6;
force emr_main_maxWeightClimb1 = 100;
force emr_main_maxWeightClimb2 = 85;
force emr_main_maxWeightClimb3 = 60;
force emr_main_maxWeightJump = 100;
force force emr_main_minClimbTerrain = 0.3;
emr_main_preventHighVaulting = false;
force emr_main_staminaCoefficient = 1;
force emr_main_whitelistStr = "";
force emr_main_yeetCoefficient = 1.4;

// Friendly Fire Phantom Protocol
force force FFPP_main_SET_enabled = true;
force force FFPP_main_SET_tellAdmin = true;
force force FFPP_main_SET_tellInstigator = false;
force force FFPP_main_SET_tellVictim = false;

// GRAD Trenches
force grad_trenches_functions_allowBigEnvelope = true;
force force grad_trenches_functions_allowCamouflage = true;
force force grad_trenches_functions_allowDigging = true;
force force grad_trenches_functions_allowEffects = true;
force grad_trenches_functions_allowGiantEnvelope = true;
force grad_trenches_functions_allowHitDecay = true;
force grad_trenches_functions_allowLongEnvelope = true;
force grad_trenches_functions_allowShortEnvelope = true;
force grad_trenches_functions_allowSmallEnvelope = true;
force force grad_trenches_functions_allowTextureLock = true;
force force grad_trenches_functions_allowTrenchDecay = false;
force grad_trenches_functions_allowVehicleEnvelope = true;
force force grad_trenches_functions_bigEnvelopeDamageMultiplier = 2;
force force grad_trenches_functions_bigEnvelopeDigTime = 60;
force force grad_trenches_functions_bigEnvelopeRemovalTime = -1;
force force grad_trenches_functions_buildFatigueFactor = 0;
force force grad_trenches_functions_camouflageRequireEntrenchmentTool = true;
force force grad_trenches_functions_createTrenchMarker = false;
force force grad_trenches_functions_decayTime = 1800;
force force grad_trenches_functions_giantEnvelopeDamageMultiplier = 1;
force force grad_trenches_functions_giantEnvelopeDigTime = 180;
force force grad_trenches_functions_giantEnvelopeRemovalTime = -1;
force grad_trenches_functions_hitDecayMultiplier = 1;
force force grad_trenches_functions_LongEnvelopeDigTime = 100;
force force grad_trenches_functions_LongEnvelopeRemovalTime = -1;
force force grad_trenches_functions_playersInAreaRadius = 0;
force force grad_trenches_functions_shortEnvelopeDamageMultiplier = 2;
force force grad_trenches_functions_shortEnvelopeDigTime = 30;
force force grad_trenches_functions_shortEnvelopeRemovalTime = -1;
force force grad_trenches_functions_smallEnvelopeDamageMultiplier = 3;
force force grad_trenches_functions_smallEnvelopeDigTime = 40;
force force grad_trenches_functions_smallEnvelopeRemovalTime = -1;
force force grad_trenches_functions_stopBuildingAtFatigueMax = false;
force force grad_trenches_functions_textureLockDistance = 5;
force force grad_trenches_functions_timeoutToDecay = 3600;
force force grad_trenches_functions_vehicleEnvelopeDamageMultiplier = 1;
force force grad_trenches_functions_vehicleEnvelopeDigTime = 180;
force force grad_trenches_functions_vehicleEnvelopeRemovalTime = -1;
force grad_trenches_functions_vehicleTrenchBuildSpeed = 5;

// Heavy Weapons Framework
force WBK_HWF_AllowProneShootSetting = true;
force WBK_HWF_AllowRecoilSetting = false;
force WBK_HWF_WeapsArraySetting = "['MMG_01_hex_F','MMG_01_hex_ARCO_LP_F','MMG_01_tan_F','MMG_02_black_F','MMG_02_black_RCO_BI_F','MMG_02_sand_F','MMG_02_sand_RCO_LP_F','MMG_02_camo_F','OPTRE_M247H_Etilka','OPTRE_M247H_Shield_Etilka','JLTS_Z6','SWLW_Z6','IDA_Z6','HLC_wp_M134Painless', 'UK3CB_M1919A4_Browning', 'UK3CB_M1919A6_Browning', 'UK3CB_Bren_303', 'UK3CB_Bren_L4_LMG', 'UK3CB_M60', 'UK3CB_MG3_Railed', 'UK3CB_MG3', 'UK3CB_MG3_KWS_B', 'UK3CB_MG3_KWS_G', 'UK3CB_MG3_KWS_T', 'UK3CB_UKM2000P', 'Aegis_MMG_FNMAG_F', 'MMG_01_black_F', 'MMG_01_ghex_F', 'Aegis_MMG_FNMAG_240_F', 'MMG_02_khaki_F', 'LMG_S77_lxWS', 'LMG_S77_AAF_lxWS', 'LMG_S77_Desert_lxWS', 'LMG_S77_GHex_lxWS', 'LMG_S77_Hex_lxWS', 'LMG_S77_Compact_lxWS', 'LMG_S77_Compact_Snakeskin_lxWS', 'MMG_01_hex_F', 'MMG_01_tan_F', 'MMG_02_black_F', 'MMG_02_camo_F', 'MMG_02_sand_F', 'CUP_lmg_L7A2_Flat', 'CUP_lmg_L7A2', 'CUP_lmg_M240_norail', 'CUP_lmg_M240_B', 'CUP_lmg_M240', 'CUP_lmg_M60', 'CUP_lmg_M60E4_norail', 'CUP_lmg_M60E4_norail_desert', 'CUP_lmg_M60E4_norail_jungle', 'CUP_lmg_M60E4_jungle', 'CUP_lmg_M60E4', 'CUP_M60A4_EP1', 'CUP_lmg_M60E4_desert', 'CUP_lmg_M60E4_wood', 'CUP_lmg_M60E4_norail_wood', 'CUP_lmg_FNMAG', 'CUP_lmg_FNMAG_RIS', 'CUP_lmg_FNMAG_RIS_modern', 'CUP_lmg_MG3', 'CUP_lmg_MG3_rail', 'CUP_lmg_PKM', 'CUP_lmg_PKM_B50_vfg', 'CUP_lmg_PKM_front_rail_B50_vfg', 'CUP_lmg_PKM_top_rail', 'CUP_lmg_PKM_top_rail_B50_vfg', 'CUP_lmg_PKMN', 'CUP_lmg_Pecheneg', 'CUP_lmg_Pecheneg_B50_vfg', 'CUP_lmg_Pecheneg_desert', 'CUP_lmg_Pecheneg_top_rail', 'CUP_lmg_Pecheneg_top_rail_B50_vfg', 'CUP_lmg_Pecheneg_woodland', 'CUP_lmg_UK59', 'gm_hmgpkm_prp', 'gm_lmgm62_blk', 'gm_mg3_blk', 'hlc_rifle_L4A3', 'HLC_wp_M134Painless', 'hlc_lmg_m60', 'hlc_lmg_M60E4', 'hlc_lmg_MG3_optic', 'hlc_lmg_MG3', 'hlc_lmg_MG3KWS_b', 'hlc_lmg_MG3KWS_g', 'hlc_lmg_MG3KWS', 'hlc_lmg_MG42', 'hlc_lmg_mg42_bakelite', 'hlc_lmg_mg42kws_b', 'hlc_lmg_mg42kws_g', 'hlc_lmg_MG42KWS_t', 'rhs_weap_pkm', 'rhs_weap_pkp', 'rhs_weap_fnmag', 'rhs_weap_mg42', 'rhs_weap_m84', 'rhs_weap_m240B', 'rhs_weap_m240G', 'vnx_fm2429', 'vn_dp28', 'vn_l4', 'vn_m1918', 'vn_m60', 'vn_m60_shorty', 'vn_m60_shorty_camo', 'vn_m63a_cdo', 'vn_m63a_lmg', 'vn_mg42', 'vn_pk', 'fow_w_mg34', 'fow_w_mg42', 'fow_w_type99_lmg', 'fow_w_bren', 'fow_w_m1918a2', 'fow_w_m1918a2_bak', 'fow_w_m1919a4', 'fow_w_m1919a6', 'LIB_Bren_Mk2', 'LIB_DP28', 'LIB_DT', 'LIB_DT_OPTIC', 'LIB_M1918A2_BAR', 'LIB_M1919A4', 'LIB_M1919A6', 'LIB_M2_Flamethrower', 'LIB_MG42', 'LIB_MG34', 'NORTH_ls26', 'NORTH_Madsen1914', 'NORTH_Madsen1922', 'NORTH_dp27', 'NORTH_DT_hand', 'NORTH_KG21', 'SPEX_LMG_303_Mk1', 'SPE_LMG_303_Mk2', 'SPE_Flammenwerfer41', 'SPE_FM_24_M29', 'SPE_M1918A0_BAR', 'SPE_M1918A2_BAR', 'SPE_M1918A2_erla_BAR', 'SPE_M1919A4', 'SPE_M1919A6', 'SPE_M2_Flamethrower', 'SPE_MG34', 'SPE_MG42', 'OPTRE_M247', 'OPTRE_M247A1', 'OPTRE_M247A1_Stripped', 'OPTRE_M247H_Etilka', 'OPTRE_M247H_Shield_Etilka', 'OPTRE_M250', 'OPTRE_M250_Gold', 'OPTRE_M73', 'OPTRE_M739_SAW_F', 'OPTRE_M739_SAW_Black_F', 'OPTRE_M739_SAW_Foregrip_F', 'OPTRE_M739_SAW_Foregrip_Black_F', 'JLTS_Z6', 'ls_weapon_ls150', 'ls_weapon_z6', '3AS_Flamer_Base']";

// LAxemann's Suppress
force force L_Suppress_buildup = 0.5;
force force L_Suppress_enabled = true;
force force L_Suppress_flyByEffects = true;
force force L_Suppress_flyByIntensity = 0.5;
force force L_Suppress_halting = true;
force force L_Suppress_intensity = 0.5;
force force L_Suppress_playerSwabEnabled = false;
force force L_Suppress_recovery = 1.5;

// Metis Marker
mts_markers_defaultMarkerAlpha = 1;
mts_markers_defaultMarkerScale = 1.3;
mts_markers_displayShortDTG = true;
mts_markers_saveLastSelection = false;
mts_markers_useVanillaColors = false;

// MrSanchez' Headlamp
force force SAN_Headlamp_AI_UpdateRate = 30;
force force SAN_Headlamp_Arcade = true;
force force SAN_Headlamp_Multiplayer_UpdateRate = 30;
force SAN_Headlamp_RenderDistance = 350;
SAN_Headlamp_SoundClickEnabled = false;

// NIArms
force force niarms_gripSwitch = true;
force force niarms_magSwitch = true;

// TFAR - Clientside settings
TFAR_curatorCamEars = true;
TFAR_default_radioVolume = 6;
TFAR_intercomDucking = 0.2;
TFAR_intercomVolume = 0.1;
TFAR_moveWhileTabbedOut = false;
TFAR_noAutomoveSpectator = false;
TFAR_oldVolumeHint = false;
TFAR_pluginTimeout = 4;
TFAR_PosUpdateMode = 0.1;
TFAR_showChannelChangedHint = true;
TFAR_ShowDiaryRecord = true;
TFAR_showTransmittingHint = true;
TFAR_ShowVolumeHUD = false;
TFAR_splendidCamEars = false;
TFAR_tangentReleaseDelay = 0;
TFAR_VolumeHudTransparency = 0;
TFAR_volumeModifier_forceSpeech = false;

// TFAR - Global settings
force TFAR_AICanHearPlayer = true;
force TFAR_AICanHearSpeaker = true;
force force TFAR_allowDebugging = false;
force force tfar_core_noTSNotConnectedHint = false;
force force TFAR_defaultIntercomSlot = 0;
force force TFAR_disableAutoMute = false;
force force TFAR_enableIntercom = true;
force force TFAR_experimentalVehicleIsolation = true;
force TFAR_externalIntercomEnable = 0;
force TFAR_externalIntercomMaxRange_Phone = 5;
force TFAR_externalIntercomMaxRange_Wireless = 15;
force force TFAR_fullDuplex = true;
force force TFAR_giveLongRangeRadioToGroupLeaders = false;
force force TFAR_giveMicroDagrToSoldier = false;
force force TFAR_givePersonalRadioToRegularSoldier = false;
force TFAR_globalRadioRangeCoef = 1;
force force TFAR_instantiate_instantiateAtBriefing = false;
force TFAR_objectInterceptionEnabled = false;
force TFAR_objectInterceptionStrength = 400;
force tfar_radiocode_east = "_opfor";
force tfar_radiocode_independent = "_independent";
force tfar_radiocode_west = "_bluefor";
force tfar_radioCodesDisabled = true;
force force TFAR_SameLRFrequenciesForSide = true;
force force TFAR_SameSRFrequenciesForSide = true;
force TFAR_setting_defaultFrequencies_lr_east = "77,76";
force TFAR_setting_defaultFrequencies_lr_independent = "77,76";
force TFAR_setting_defaultFrequencies_lr_west = "77,76";
force TFAR_setting_defaultFrequencies_sr_east = "123";
force TFAR_setting_defaultFrequencies_sr_independent = "123";
force TFAR_setting_defaultFrequencies_sr_west = "123";
force force TFAR_setting_DefaultRadio_Airborne_east = "TFAR_mr6000l";
force force TFAR_setting_DefaultRadio_Airborne_Independent = "TFAR_anarc164";
force force TFAR_setting_DefaultRadio_Airborne_West = "TFAR_anarc210";
force force TFAR_setting_DefaultRadio_Backpack_east = "TFAR_mr3000";
force force TFAR_setting_DefaultRadio_Backpack_Independent = "TFAR_anprc155";
force force TFAR_setting_DefaultRadio_Backpack_west = "TFAR_rt1523g";
force force TFAR_setting_DefaultRadio_Personal_east = "TFAR_fadak";
force force TFAR_setting_DefaultRadio_Personal_Independent = "TFAR_anprc148jem";
force force TFAR_setting_DefaultRadio_Personal_West = "TFAR_anprc152";
force force TFAR_setting_DefaultRadio_Rifleman_East = "TFAR_pnr1000a";
force force TFAR_setting_DefaultRadio_Rifleman_Independent = "TFAR_anprc154";
force force TFAR_setting_DefaultRadio_Rifleman_West = "TFAR_rf7800str";
force TFAR_setting_externalIntercomWirelessHeadgear = "";
force force TFAR_spectatorCanHearEnemyUnits = true;
force force TFAR_spectatorCanHearFriendlies = true;
force force TFAR_takingRadio = 2;
force force TFAR_Teamspeak_Channel_Name = "TaskForceRadio Eventserver";
force force TFAR_Teamspeak_Channel_Password = "Cw2$6";
force tfar_terrain_interception_coefficient = 7;
force force TFAR_voiceCone = true;

// TSP Animate
tsp_cba_animate_Abort = true;
tsp_cba_animate_Advance = true;
tsp_cba_animate_attachment = true;
tsp_cba_animate_Bang = true;
tsp_cba_animate_Bird = true;
tsp_cba_animate_black = "[""optic_tws_mg""]";
tsp_cba_animate_Breach = true;
tsp_cba_animate_Cancel = true;
tsp_cba_animate_cant = true;
tsp_cba_animate_captive = true;
tsp_cba_animate_carry = 2;
tsp_cba_animate_Cease Fire = true;
tsp_cba_animate_clacker = true;
tsp_cba_animate_Column = true;
tsp_cba_animate_commands = true;
tsp_cba_animate_compass = true;
tsp_cba_animate_Contact = true;
tsp_cba_animate_Cover = true;
force force tsp_cba_animate_Dab = false;
force force tsp_cba_animate_door = true;
tsp_cba_animate_Duo = true;
tsp_cba_animate_Engage = true;
tsp_cba_animate_Follow = true;
tsp_cba_animate_Forward = true;
tsp_cba_animate_Frag = true;
tsp_cba_animate_Freeze = true;
tsp_cba_animate_friend = 2;
tsp_cba_animate_Go = true;
tsp_cba_animate_grenade = true;
tsp_cba_animate_Halt = true;
tsp_cba_animate_Heart = true;
tsp_cba_animate_Hold = true;
tsp_cba_animate_Horns = true;
tsp_cba_animate_Inspect = true;
tsp_cba_animate_Ivan = true;
force force tsp_cba_animate_Jackoff = false;
tsp_cba_animate_Kata = true;
tsp_cba_animate_ladder = true;
tsp_cba_animate_lift = true;
tsp_cba_animate_Line = true;
tsp_cba_animate_Loser = true;
force force tsp_cba_animate_Mahalo = false;
tsp_cba_animate_map = true;
tsp_cba_animate_Metal = true;
tsp_cba_animate_nvg = true;
tsp_cba_animate_object = 0.75;
tsp_cba_animate_Ok = true;
tsp_cba_animate_Paper = true;
tsp_cba_animate_Peace = true;
tsp_cba_animate_Peek = true;
tsp_cba_animate_Point = true;
tsp_cba_animate_poll = 0.25;
tsp_cba_animate_port = true;
tsp_cba_animate_Pushups = true;
tsp_cba_animate_Ready = true;
tsp_cba_animate_Regroup = true;
tsp_cba_animate_Rock = true;
tsp_cba_animate_Scissors = true;
tsp_cba_animate_shake = 1;
tsp_cba_animate_Shotgun = true;
tsp_cba_animate_sling = true;
tsp_cba_animate_sling_add = false;
tsp_cba_animate_sling_arsenal = false;
tsp_cba_animate_sling_pos = "[[0.1, 0.8, 0.15], [-90, 40, 70]]";
tsp_cba_animate_sling_required = true;
tsp_cba_animate_sling_scroll = true;
tsp_cba_animate_sling_sprint = false;
tsp_cba_animate_sling_style = "adhd";
tsp_cba_animate_sound = 1;
tsp_cba_animate_sprint = true;
tsp_cba_animate_Squats = true;
tsp_cba_animate_Stefan = true;
tsp_cba_animate_Stop = true;
tsp_cba_animate_style = "";
tsp_cba_animate_style_autorifle = "loose_";
tsp_cba_animate_style_shotgun = "butt_";
tsp_cba_animate_style_sniper = "loose_";
force tsp_cba_animate_Suicide = false;
tsp_cba_animate_tactical = true;
tsp_cba_animate_tap = true;
tsp_cba_animate_throw = true;
tsp_cba_animate_ThumbsDown = true;
tsp_cba_animate_ThumbsUp = true;
tsp_cba_animate_uav = true;
tsp_cba_animate_Up = true;
force force tsp_cba_animate_walk = true;
tsp_cba_animate_walk_default = 1;
tsp_cba_animate_walk_lower = 1;
tsp_cba_animate_walk_max = 1.6;
tsp_cba_animate_Warning = true;
tsp_cba_animate_watch = true;
tsp_cba_animate_Wedge = true;
tsp_cba_animate_Zozo = true;

// TSP Core
force force tsp_cba_angle = -0.1;
force force tsp_cba_compat = false;
force force tsp_cba_core_chvd = false;
force force tsp_cba_core_pause = false;
force force tsp_cba_hint = "Subtitle (Top)";
force force tsp_cba_hint_distance = 20;
force force tsp_param_faction = false;

// UK3CB Factions
uk3cb_pipstretchfactor = 0;
uk3cb_preferedOptic = 0;
uk3cb_preferedOpticHighMag = 0;

// Unit Ambient SFX
force force uvo_uas_chanceCough = 0.1;
force force uvo_uas_chanceRadio = 0.5;
force force uvo_uas_chanceSigh = 0.1;
force force uvo_uas_chanceWhistle = 0.03;
force force uvo_uas_distanceCough = 250;
force force uvo_uas_distanceRadio = 250;
force force uvo_uas_distanceRadioInVehicle = 100;
force force uvo_uas_distanceSigh = 150;
force force uvo_uas_distanceWhistle = 250;
force uvo_uas_enableCoughing = true;
force uvo_uas_enablePlayers = true;
force uvo_uas_enableRadio = true;
force uvo_uas_enableRadioPlayers = true;
force uvo_uas_enableSighing = true;
force uvo_uas_enableWhistling = true;
force force uvo_uas_intMultiplierCough = 2.5;
force force uvo_uas_intMultiplierRadio = 2.5;
force force uvo_uas_intMultiplierSigh = 2.5;
force force uvo_uas_intMultiplierWhistle = 2.5;
force force uvo_uas_minIntCough = 60;
force force uvo_uas_minIntRadio = 20;
force force uvo_uas_minIntSigh = 60;
force force uvo_uas_minIntWhistle = 120;
force force uvo_uas_radioOperator = 0;

// Unit Voice-overs
force AET_UVO_BLUFOR_LANGUAGE = "WEST";
force AET_UVO_CIV_LANGUAGE = "NONE";
force AET_UVO_GUER_LANGUAGE = "GUER";
force AET_UVO_OPFOR_LANGUAGE = "EAST";
force uvo_main_compatExplosive = "";
force uvo_main_compatFlash = "";
force uvo_main_compatFrag = "";
force uvo_main_compatIncendiary = "";
force uvo_main_compatSmoke = "";
force uvo_main_deathShoutDistance = 300;
force force uvo_main_deathShoutVolume = 3;
force uvo_main_debug = false;
force uvo_main_enableCallouts = false;
force uvo_main_enablePlayers = false;
force force uvo_main_hearingDistance = 300;
force force uvo_main_killConfirmChanceAI = 1;
force force uvo_main_killConfirmChancePlayer = 1;
force force uvo_main_killConfirmStealth = false;
force force uvo_main_sentencesAMER = true;
force force uvo_main_sentencesARAB = true;
force force uvo_main_sentencesASIA = true;
force force uvo_main_sentencesBRIT = true;
force force uvo_main_sentencesCZ = true;
force force uvo_main_sentencesEast = true;
force force uvo_main_sentencesFREN = true;
force force uvo_main_sentencesGERM = true;
force force uvo_main_sentencesGuer = true;
force force uvo_main_sentencesJP = true;
force force uvo_main_sentencesPOL = true;
force force uvo_main_sentencesRUSS = true;
force force uvo_main_sentencesWest = true;
force force uvo_main_UVOAMER = true;
force force uvo_main_UVOARAB = true;
force force uvo_main_UVOASIA = true;
force force uvo_main_UVOBRIT = true;
force force uvo_main_UVOCZ = true;
force force uvo_main_UVOEast = true;
force force uvo_main_UVOFREN = true;
force force uvo_main_UVOGERM = true;
force force uvo_main_UVOGuer = true;
force force uvo_main_UVOJP = true;
force force uvo_main_UVOPOL = true;
force force uvo_main_UVORUSS = true;
force force uvo_main_UVOWest = true;
force force uvo_main_voicePitch = 1;

// VET_Unflipping
force force vet_unflipping_require_serviceVehicle = false;
force force vet_unflipping_require_toolkit = false;
force force vet_unflipping_time = 20;
force force vet_unflipping_unit_man_limit = 5;
force force vet_unflipping_unit_mass_limit = 3000;
force force vet_unflipping_vehicle_mass_limit = 100000;

// Zeus Enhanced
force force zen_area_markers_editableMarkers = 0;
zen_building_markers_enabled = false;
zen_camera_adaptiveSpeed = true;
zen_camera_defaultSpeedCoef = 1;
zen_camera_fastSpeedCoef = 1;
force force zen_camera_followTerrain = false;
force force zen_common_ascensionMessages = false;
force force zen_common_autoAddObjects = false;
force force zen_common_cameraBird = false;
zen_common_darkMode = true;
force force zen_common_disableGearAnim = true;
force force zen_common_preferredArsenal = 1;
zen_compat_ace_hideModules = true;
force force zen_context_menu_enabled = 2;
zen_context_menu_overrideWaypoints = false;
zen_editor_addGroupIcons = false;
zen_editor_addModIcons = false;
zen_editor_declutterEmptyTree = true;
zen_editor_disableLiveSearch = false;
zen_editor_moveDisplayToEdge = true;
force force zen_editor_parachuteSounds = true;
zen_editor_previews_enabled = true;
zen_editor_randomizeCopyPaste = false;
zen_editor_removeWatermark = true;
zen_editor_unitRadioMessages = 0;
zen_placement_enabled = true;
zen_remote_control_cameraExitPosition = 2;
zen_visibility_enabled = 0;
zen_visibility_maxDistance = 5000;
zen_vision_enableBlackHot = false;
zen_vision_enableBlackHotGreenCold = false;
zen_vision_enableBlackHotRedCold = false;
zen_vision_enableGreenHotCold = false;
zen_vision_enableNVG = true;
zen_vision_enableRedGreenThermal = false;
zen_vision_enableRedHotCold = false;
zen_vision_enableWhiteHot = true;
zen_vision_enableWhiteHotRedCold = false;

// Zeus Enhanced - Attributes
zen_attributes_enableAbilities = true;
zen_attributes_enableAmmo = true;
zen_attributes_enableAmmoCargo = true;
zen_attributes_enableArsenal = true;
zen_attributes_enableBuildingMarker = true;
zen_attributes_enableDamage = true;
zen_attributes_enableEngine = true;
zen_attributes_enableExecute = true;
zen_attributes_enableFuel = true;
zen_attributes_enableFuelCargo = true;
zen_attributes_enableGarage = true;
zen_attributes_enableGroupBehaviour = true;
zen_attributes_enableGroupCombatMode = true;
zen_attributes_enableGroupExecute = true;
zen_attributes_enableGroupFormation = true;
zen_attributes_enableGroupID = true;
zen_attributes_enableGroupSide = true;
zen_attributes_enableGroupSkill = true;
zen_attributes_enableGroupSpeed = true;
zen_attributes_enableGroupStance = true;
zen_attributes_enableHealth = true;
zen_attributes_enableInventory = true;
zen_attributes_enableLights = true;
zen_attributes_enableMarkerAlpha = true;
zen_attributes_enableMarkerColor = true;
zen_attributes_enableMarkerText = true;
zen_attributes_enableName = true;
zen_attributes_enablePlateNumber = true;
zen_attributes_enableRank = true;
zen_attributes_enableRepairCargo = true;
zen_attributes_enableRespawnPosition = true;
zen_attributes_enableRespawnVehicle = true;
zen_attributes_enableSensors = true;
zen_attributes_enableSkill = true;
zen_attributes_enableSkills = true;
zen_attributes_enableStance = true;
zen_attributes_enableStates = true;
zen_attributes_enableTraits = true;
zen_attributes_enableVehicleLock = true;
zen_attributes_enableWaypointBehaviour = true;
zen_attributes_enableWaypointCombatMode = true;
zen_attributes_enableWaypointFormation = true;
zen_attributes_enableWaypointLoiterAltitude = true;
zen_attributes_enableWaypointLoiterDirection = true;
zen_attributes_enableWaypointLoiterRadius = true;
zen_attributes_enableWaypointSpeed = true;
zen_attributes_enableWaypointTimeout = true;
zen_attributes_enableWaypointType = true;

// Zeus Enhanced - Faction Filter
zen_faction_filter_0_Athena_OPF_T_F = true;
zen_faction_filter_0_Athena_OPF_T_F_groups = true;
zen_faction_filter_0_Atlas_OPF_T_F = true;
zen_faction_filter_0_Atlas_OPF_V_wdl_F = true;
zen_faction_filter_0_Atlas_OPF_W_F = true;
zen_faction_filter_0_CUP_O_ChDKZ = true;
zen_faction_filter_0_CUP_O_RU = true;
zen_faction_filter_0_CUP_O_RUS_M = true;
zen_faction_filter_0_CUP_O_SLA = true;
zen_faction_filter_0_CUP_O_TK = true;
zen_faction_filter_0_CUP_O_TK_MILITIA = true;
zen_faction_filter_0_CUP_Static_Ships = true;
zen_faction_filter_0_EdCat_GO_CSAT_Arctic = true;
zen_faction_filter_0_gm_fc_gc = true;
zen_faction_filter_0_gm_fc_gc_bgs = true;
zen_faction_filter_0_gm_fc_pl = true;
zen_faction_filter_0_gm_gc_army_win = true;
zen_faction_filter_0_gm_pl_army_win = true;
zen_faction_filter_0_gmx_fc_chdkz = true;
zen_faction_filter_0_gmx_fc_tak = true;
zen_faction_filter_0_O_CAM = true;
zen_faction_filter_0_O_PAVN = true;
zen_faction_filter_0_O_PL = true;
zen_faction_filter_0_O_VC = true;
zen_faction_filter_0_OPF_A_F = true;
zen_faction_filter_0_OPF_CD_F = true;
zen_faction_filter_0_OPF_F = true;
zen_faction_filter_0_OPF_G_F = true;
zen_faction_filter_0_OPF_GEN_F = true;
zen_faction_filter_0_Opf_OPF_P_F = true;
zen_faction_filter_0_Opf_OPF_S_F = true;
zen_faction_filter_0_OPF_R_ard_F = true;
zen_faction_filter_0_OPF_R_F = true;
zen_faction_filter_0_OPF_Raven_F = true;
zen_faction_filter_0_OPF_SFIA_lxWS = true;
zen_faction_filter_0_OPF_T_F = true;
zen_faction_filter_0_OPF_TURA_lxWS = true;
zen_faction_filter_0_OPF_V_F = true;
zen_faction_filter_0_OPF_V_tna_F = true;
zen_faction_filter_0_rhs_faction_msv = true;
zen_faction_filter_0_rhs_faction_rva = true;
zen_faction_filter_0_rhs_faction_tv = true;
zen_faction_filter_0_rhs_faction_vdv = true;
zen_faction_filter_0_rhs_faction_vmf = true;
zen_faction_filter_0_rhs_faction_vpvo = true;
zen_faction_filter_0_rhs_faction_vv = true;
zen_faction_filter_0_rhs_faction_vvs = true;
zen_faction_filter_0_rhs_faction_vvs_c = true;
zen_faction_filter_0_rhsgref_faction_chdkz = true;
zen_faction_filter_0_rhsgref_faction_chdkz_groups = true;
zen_faction_filter_0_rhsgref_faction_tla = true;
zen_faction_filter_0_rhssaf_faction_airforce_opfor = true;
zen_faction_filter_0_rhssaf_faction_army_opfor = true;
zen_faction_filter_0_UK3CB_AAF_O = true;
zen_faction_filter_0_UK3CB_ADA_O = true;
zen_faction_filter_0_UK3CB_ADC_O = true;
zen_faction_filter_0_UK3CB_ADE_O = true;
zen_faction_filter_0_UK3CB_ADG_O = true;
zen_faction_filter_0_UK3CB_ADM_O = true;
zen_faction_filter_0_UK3CB_ADP_O = true;
zen_faction_filter_0_UK3CB_ADR_O = true;
zen_faction_filter_0_UK3CB_APD_O = true;
zen_faction_filter_0_UK3CB_ARD_O = true;
zen_faction_filter_0_UK3CB_CCM_O = true;
zen_faction_filter_0_UK3CB_CHC_O = true;
zen_faction_filter_0_UK3CB_CHD_O = true;
zen_faction_filter_0_UK3CB_CHD_O_groups = true;
zen_faction_filter_0_UK3CB_CHD_W_O = true;
zen_faction_filter_0_UK3CB_CHD_W_O_groups = true;
zen_faction_filter_0_UK3CB_CPD_O = true;
zen_faction_filter_0_UK3CB_CSAT_A_O = true;
zen_faction_filter_0_UK3CB_CSAT_A_O_groups = true;
zen_faction_filter_0_UK3CB_CSAT_B_O = true;
zen_faction_filter_0_UK3CB_CSAT_B_O_groups = true;
zen_faction_filter_0_UK3CB_CSAT_F_O = true;
zen_faction_filter_0_UK3CB_CSAT_F_O_groups = true;
zen_faction_filter_0_UK3CB_CSAT_G_O = true;
zen_faction_filter_0_UK3CB_CSAT_G_O_groups = true;
zen_faction_filter_0_UK3CB_CSAT_M_O = true;
zen_faction_filter_0_UK3CB_CSAT_M_O_groups = true;
zen_faction_filter_0_UK3CB_CSAT_N_O = true;
zen_faction_filter_0_UK3CB_CSAT_N_O_groups = true;
zen_faction_filter_0_UK3CB_CSAT_S_O = true;
zen_faction_filter_0_UK3CB_CSAT_S_O_groups = true;
zen_faction_filter_0_UK3CB_CSAT_U_O = true;
zen_faction_filter_0_UK3CB_CSAT_U_O_groups = true;
zen_faction_filter_0_UK3CB_CSAT_W_O = true;
zen_faction_filter_0_UK3CB_CSAT_W_O_groups = true;
zen_faction_filter_0_UK3CB_CW_SOV_O_EARLY = true;
zen_faction_filter_0_UK3CB_CW_SOV_O_LATE = true;
zen_faction_filter_0_UK3CB_FIA_O = true;
zen_faction_filter_0_UK3CB_GAF_O = true;
zen_faction_filter_0_UK3CB_ION_O_Desert = true;
zen_faction_filter_0_UK3CB_ION_O_Urban = true;
zen_faction_filter_0_UK3CB_ION_O_Winter = true;
zen_faction_filter_0_UK3CB_ION_O_Woodland = true;
zen_faction_filter_0_UK3CB_KDF_O = true;
zen_faction_filter_0_UK3CB_KRG_O = true;
zen_faction_filter_0_UK3CB_LDF_O = true;
zen_faction_filter_0_UK3CB_LDF_O_groups = true;
zen_faction_filter_0_UK3CB_LFR_O = true;
zen_faction_filter_0_UK3CB_LNM_O = true;
zen_faction_filter_0_UK3CB_LNM_O_groups = true;
zen_faction_filter_0_UK3CB_LSM_O = true;
zen_faction_filter_0_UK3CB_MDF_O = true;
zen_faction_filter_0_UK3CB_MEC_O = true;
zen_faction_filter_0_UK3CB_MEE_O = true;
zen_faction_filter_0_UK3CB_MEI_O = true;
zen_faction_filter_0_UK3CB_NAP_O = true;
zen_faction_filter_0_UK3CB_NAP_O_groups = true;
zen_faction_filter_0_UK3CB_NFA_O = true;
zen_faction_filter_0_UK3CB_NFA_O_groups = true;
zen_faction_filter_0_UK3CB_NPD_O = true;
zen_faction_filter_0_UK3CB_TKA_O = true;
zen_faction_filter_0_UK3CB_TKC_O = true;
zen_faction_filter_0_UK3CB_TKM_O = true;
zen_faction_filter_0_UK3CB_TKP_O = true;
zen_faction_filter_1_Athena_BLU_G_F = true;
zen_faction_filter_1_Atlas_BLU_A_ard_F = true;
zen_faction_filter_1_Atlas_BLU_A_F = true;
zen_faction_filter_1_Atlas_BLU_A_trp_F = true;
zen_faction_filter_1_Atlas_BLU_G_ard_F = true;
zen_faction_filter_1_Atlas_BLU_G_F = true;
zen_faction_filter_1_Atlas_BLU_H_F = true;
zen_faction_filter_1_Atlas_BLU_K_F = true;
zen_faction_filter_1_Atlas_BLU_L_F = true;
zen_faction_filter_1_Atlas_BLU_M_F = true;
zen_faction_filter_1_B_AUS = true;
zen_faction_filter_1_B_CIA = true;
zen_faction_filter_1_B_MACV = true;
zen_faction_filter_1_B_MEDT = true;
zen_faction_filter_1_B_NZ = true;
zen_faction_filter_1_B_ROK = true;
zen_faction_filter_1_BLU_A_F = true;
zen_faction_filter_1_BLU_A_tna_F = true;
zen_faction_filter_1_BLU_A_wdl_F = true;
zen_faction_filter_1_BLU_CTRG_F = true;
zen_faction_filter_1_BLU_CTRG_tna_F = true;
zen_faction_filter_1_BLU_EAF_ard_F = true;
zen_faction_filter_1_BLU_EAF_F = true;
zen_faction_filter_1_BLU_F = true;
zen_faction_filter_1_BLU_G_F = true;
zen_faction_filter_1_BLU_GEN_F = true;
zen_faction_filter_1_BLU_ION_lxWS = true;
zen_faction_filter_1_BLU_NATO_lxWS = true;
zen_faction_filter_1_BLU_T_F = true;
zen_faction_filter_1_BLU_TURA_lxWS = true;
zen_faction_filter_1_BLU_UN_lxWS = true;
zen_faction_filter_1_BLU_W_F = true;
zen_faction_filter_1_CUP_B_AFU = true;
zen_faction_filter_1_CUP_B_CDF = true;
zen_faction_filter_1_CUP_B_CZ = true;
zen_faction_filter_1_CUP_B_GB = true;
zen_faction_filter_1_CUP_B_GER = true;
zen_faction_filter_1_CUP_B_HIL = true;
zen_faction_filter_1_CUP_B_RNZN = true;
zen_faction_filter_1_CUP_B_US_Army = true;
zen_faction_filter_1_CUP_B_USMC = true;
zen_faction_filter_1_CUP_Static_Ships = true;
zen_faction_filter_1_EdCat_GO_NATO_Arctic = true;
zen_faction_filter_1_gm_dk_army_win = true;
zen_faction_filter_1_gm_fc_dk = true;
zen_faction_filter_1_gm_fc_ge = true;
zen_faction_filter_1_gm_fc_ge_bgs = true;
zen_faction_filter_1_gm_ge_army_win = true;
zen_faction_filter_1_gmx_fc_cdf = true;
zen_faction_filter_1_gmx_fc_cdf2022 = true;
zen_faction_filter_1_gmx_tak_army = true;
zen_faction_filter_1_Marine_BLU_USMC_F = true;
zen_faction_filter_1_Opf_BLU_P_F = true;
zen_faction_filter_1_rhs_faction_socom = true;
zen_faction_filter_1_rhs_faction_usaf = true;
zen_faction_filter_1_rhs_faction_usarmy_d = true;
zen_faction_filter_1_rhs_faction_usarmy_wd = true;
zen_faction_filter_1_rhs_faction_usmc_d = true;
zen_faction_filter_1_rhs_faction_usmc_wd = true;
zen_faction_filter_1_rhs_faction_usn = true;
zen_faction_filter_1_rhsgref_faction_cdf_air_b = true;
zen_faction_filter_1_rhsgref_faction_cdf_ground_b = true;
zen_faction_filter_1_rhsgref_faction_cdf_ground_b_groups = true;
zen_faction_filter_1_rhsgref_faction_cdf_ng_b = true;
zen_faction_filter_1_rhsgref_faction_hidf = true;
zen_faction_filter_1_UK3CB_AAF_B = true;
zen_faction_filter_1_UK3CB_ADA_B = true;
zen_faction_filter_1_UK3CB_ADC_B = true;
zen_faction_filter_1_UK3CB_ADG_B = true;
zen_faction_filter_1_UK3CB_ADM_B = true;
zen_faction_filter_1_UK3CB_ADP_B = true;
zen_faction_filter_1_UK3CB_ADR_B = true;
zen_faction_filter_1_UK3CB_ANA_B = true;
zen_faction_filter_1_UK3CB_ANP_B = true;
zen_faction_filter_1_UK3CB_APD_B = true;
zen_faction_filter_1_UK3CB_ARD_B = true;
zen_faction_filter_1_UK3CB_CCM_B = true;
zen_faction_filter_1_UK3CB_CHC_B = true;
zen_faction_filter_1_UK3CB_CHD_B = true;
zen_faction_filter_1_UK3CB_CHD_B_groups = true;
zen_faction_filter_1_UK3CB_CHD_W_B = true;
zen_faction_filter_1_UK3CB_CHD_W_B_groups = true;
zen_faction_filter_1_UK3CB_CPD_B = true;
zen_faction_filter_1_UK3CB_CW_US_B_EARLY = true;
zen_faction_filter_1_UK3CB_CW_US_B_LATE = true;
zen_faction_filter_1_UK3CB_FIA_B = true;
zen_faction_filter_1_UK3CB_GAF_B = true;
zen_faction_filter_1_UK3CB_ION_B_Desert = true;
zen_faction_filter_1_UK3CB_ION_B_Urban = true;
zen_faction_filter_1_UK3CB_ION_B_Winter = true;
zen_faction_filter_1_UK3CB_ION_B_Woodland = true;
zen_faction_filter_1_UK3CB_KDF_B = true;
zen_faction_filter_1_UK3CB_KRG_B = true;
zen_faction_filter_1_UK3CB_LDF_B = true;
zen_faction_filter_1_UK3CB_LDF_B_groups = true;
zen_faction_filter_1_UK3CB_LFR_B = true;
zen_faction_filter_1_UK3CB_LNM_B = true;
zen_faction_filter_1_UK3CB_LNM_B_groups = true;
zen_faction_filter_1_UK3CB_LSM_B = true;
zen_faction_filter_1_UK3CB_MDF_B = true;
zen_faction_filter_1_UK3CB_MEC_B = true;
zen_faction_filter_1_UK3CB_MEI_B = true;
zen_faction_filter_1_UK3CB_NAP_B = true;
zen_faction_filter_1_UK3CB_NAP_B_groups = true;
zen_faction_filter_1_UK3CB_NFA_B = true;
zen_faction_filter_1_UK3CB_NFA_B_groups = true;
zen_faction_filter_1_UK3CB_NPD_B = true;
zen_faction_filter_1_UK3CB_TKA_B = true;
zen_faction_filter_1_UK3CB_TKC_B = true;
zen_faction_filter_1_UK3CB_TKM_B = true;
zen_faction_filter_1_UK3CB_TKP_B = true;
zen_faction_filter_1_UK3CB_UN_B = true;
zen_faction_filter_2_Atlas_IND_AR_F = true;
zen_faction_filter_2_Atlas_IND_I_F = true;
zen_faction_filter_2_Atlas_IND_UNO_F = true;
zen_faction_filter_2_Atlas_IND_UNO_wdl_F = true;
zen_faction_filter_2_CUP_I_NAPA = true;
zen_faction_filter_2_CUP_I_PMC_ION = true;
zen_faction_filter_2_CUP_I_RACS = true;
zen_faction_filter_2_CUP_I_TK_GUE = true;
zen_faction_filter_2_CUP_I_UN = true;
zen_faction_filter_2_CUP_Static_Ships = true;
zen_faction_filter_2_gm_fc_xx = true;
zen_faction_filter_2_I_ARVN = true;
zen_faction_filter_2_I_CAM = true;
zen_faction_filter_2_I_LAO = true;
zen_faction_filter_2_IND_C_F = true;
zen_faction_filter_2_IND_E_ard_F = true;
zen_faction_filter_2_IND_E_F = true;
zen_faction_filter_2_IND_F = true;
zen_faction_filter_2_IND_G_F = true;
zen_faction_filter_2_IND_L_F = true;
zen_faction_filter_2_IND_Raven_F = true;
zen_faction_filter_2_IND_SFIA_lxWS = true;
zen_faction_filter_2_IND_TURA_lxWS = true;
zen_faction_filter_2_Opf_IND_I_F = true;
zen_faction_filter_2_Police_IND_P_F = true;
zen_faction_filter_2_rhsgref_faction_cdf_air = true;
zen_faction_filter_2_rhsgref_faction_cdf_ground = true;
zen_faction_filter_2_rhsgref_faction_cdf_ground_groups = true;
zen_faction_filter_2_rhsgref_faction_cdf_ng = true;
zen_faction_filter_2_rhsgref_faction_cdf_ng_groups = true;
zen_faction_filter_2_rhsgref_faction_chdkz_g = true;
zen_faction_filter_2_rhsgref_faction_chdkz_g_groups = true;
zen_faction_filter_2_rhsgref_faction_nationalist = true;
zen_faction_filter_2_rhsgref_faction_nationalist_groups = true;
zen_faction_filter_2_rhsgref_faction_tla_g = true;
zen_faction_filter_2_rhsgref_faction_un = true;
zen_faction_filter_2_rhssaf_faction_airforce = true;
zen_faction_filter_2_rhssaf_faction_army = true;
zen_faction_filter_2_rhssaf_faction_un = true;
zen_faction_filter_2_UK3CB_AAF_I = true;
zen_faction_filter_2_UK3CB_ADA_I = true;
zen_faction_filter_2_UK3CB_ADC_I = true;
zen_faction_filter_2_UK3CB_ADE_I = true;
zen_faction_filter_2_UK3CB_ADG_I = true;
zen_faction_filter_2_UK3CB_ADM_I = true;
zen_faction_filter_2_UK3CB_ADP_I = true;
zen_faction_filter_2_UK3CB_ADR_I = true;
zen_faction_filter_2_UK3CB_APD_I = true;
zen_faction_filter_2_UK3CB_ARD_I = true;
zen_faction_filter_2_UK3CB_CCM_I = true;
zen_faction_filter_2_UK3CB_CHC_I = true;
zen_faction_filter_2_UK3CB_CHD_I = true;
zen_faction_filter_2_UK3CB_CHD_I_groups = true;
zen_faction_filter_2_UK3CB_CHD_W_I = true;
zen_faction_filter_2_UK3CB_CHD_W_I_groups = true;
zen_faction_filter_2_UK3CB_CPD_I = true;
zen_faction_filter_2_UK3CB_FIA_I = true;
zen_faction_filter_2_UK3CB_GAF_I = true;
zen_faction_filter_2_UK3CB_ION_I_Desert = true;
zen_faction_filter_2_UK3CB_ION_I_Urban = true;
zen_faction_filter_2_UK3CB_ION_I_Winter = true;
zen_faction_filter_2_UK3CB_ION_I_Woodland = true;
zen_faction_filter_2_UK3CB_KDF_I = true;
zen_faction_filter_2_UK3CB_KRG_I = true;
zen_faction_filter_2_UK3CB_LDF_I = true;
zen_faction_filter_2_UK3CB_LDF_I_groups = true;
zen_faction_filter_2_UK3CB_LFR_I = true;
zen_faction_filter_2_UK3CB_LNM_I = true;
zen_faction_filter_2_UK3CB_LNM_I_groups = true;
zen_faction_filter_2_UK3CB_LSM_I = true;
zen_faction_filter_2_UK3CB_MDF_I = true;
zen_faction_filter_2_UK3CB_MEC_I = true;
zen_faction_filter_2_UK3CB_MEE_I = true;
zen_faction_filter_2_UK3CB_MEI_I = true;
zen_faction_filter_2_UK3CB_NAP_I = true;
zen_faction_filter_2_UK3CB_NAP_I_groups = true;
zen_faction_filter_2_UK3CB_NFA_I = true;
zen_faction_filter_2_UK3CB_NFA_I_groups = true;
zen_faction_filter_2_UK3CB_NPD_I = true;
zen_faction_filter_2_UK3CB_TKA_I = true;
zen_faction_filter_2_UK3CB_TKC_I = true;
zen_faction_filter_2_UK3CB_TKM_I = true;
zen_faction_filter_2_UK3CB_TKP_I = true;
zen_faction_filter_2_UK3CB_UN_I = true;
zen_faction_filter_3_Aegis_CIV_ARG_F = true;
zen_faction_filter_3_Aegis_CIV_GEN_F = true;
zen_faction_filter_3_Aegis_CIV_HI_F = true;
zen_faction_filter_3_Aegis_CIV_LIV_F = true;
zen_faction_filter_3_Aegis_CIV_MA_F = true;
zen_faction_filter_3_C_VIET = true;
zen_faction_filter_3_CIV_F = true;
zen_faction_filter_3_CIV_IDAP_F = true;
zen_faction_filter_3_CUP_C_CHERNARUS = true;
zen_faction_filter_3_CUP_C_RU = true;
zen_faction_filter_3_CUP_C_SAHRANI = true;
zen_faction_filter_3_CUP_C_TK = true;
zen_faction_filter_3_EdCat_jbad_vehicles = true;
zen_faction_filter_3_gm_fc_gc_civ = true;
zen_faction_filter_3_gm_fc_ge_civ = true;
zen_faction_filter_3_UK3CB_ADC_C = true;
zen_faction_filter_3_UK3CB_CHC_C = true;
zen_faction_filter_3_UK3CB_MEC_C = true;
zen_faction_filter_3_UK3CB_TKC_C = true;

// LAST UPDATED 2025-07-30
// END OF AET FILE
#include "AET_Scripts\AET_settings.sqf"
