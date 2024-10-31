/* ----------------------------------------------------------------------------
Author:
	ConnorAU - https://github.com/ConnorAU

Function:
	DiscordRichPresence_fnc_3den

Description:
	Handle 3den editor rich presence event handlers

Parameters:
	0 : STRING - Eventhandler calling the script

Return:
	Nothing
---------------------------------------------------------------------------- */

switch _this do {
	case "onTerrainNew";
	case "onMissionPreviewEnd";
	case "init":{
		[] call DiscordRichPresence_fnc_init;
		"update" call DiscordRichPresence_fnc_3den;
	};
	case "onMissionLoad";
	case "onMissionNew";
	case "onMissionSave";
	case "update":{
		// Spawn to delay by a frame, allowing the briefingName to load when mode is onMissionLoad
		[] spawn {
			isNil {
				[
					["UpdateDetails", "Antistasi Event Team"],
					["UpdateState", getText(configFile >> "CfgWorlds" >> worldName >> "description")]
				] call DiscordRichPresence_fnc_update;
			};
		};
	};
};

nil
