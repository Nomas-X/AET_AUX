#include "../script_component.hpp"

/*
Author: Redwan S / Nomas

Description:
    This function is used to initialize certain scripts and functions after CBA setting initialization, namely the antiBounceSmokeGL function and the compareAddonOptions function.

Arguments:
	N/A

Return Value:
	<Nil>

Example:
	[] call AET_common_fnc_postInit;
*/

private _code = {

	player createDiarySubject ["AntistasiEventTeamActions","AET Actions"];

	if (SET(antiBounceSmokeGL_enabled)) then {

		call FUNC(antiBounceSmokeGL);
	};

	if (isServer && {SET(dynamicGroups)}) then {

		["Initialize", [true]] call BIS_fnc_dynamicGroups;
	};
	
	if (hasInterface && {SET(dynamicGroups)}) then {

		["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;
	};

	if (hasInterface) then {

		GVAR(settingsDiary) = player createDiaryRecord ["AntistasiEventTeamActions", ["CBA Settings Comparison Request", "<execute expression='[player] call " + QFUNC(compareAddonOptions) + ";'>Execute!</execute>"]];

		[
			{!isNull (findDisplay 46)},
			{
				private _versionRegex = "\/\/ LAST UPDATED \d\d\d\d-\d\d-\d\d";
				[PATH_TO_ADDON_2(data,master_cba_settings.sqf), "cba_settings.sqf", _versionRegex] call AET_common_fnc_compareFileVersions;
				[PATH_TO_ADDON_2(data,master_AET_settings.sqf), "AET_Scripts\AET_settings.sqf", _versionRegex] call AET_common_fnc_compareFileVersions;
				[PATH_TO_ADDON_2(data,master_description.txt), "description.ext", _versionRegex] call AET_common_fnc_compareFileVersions;
			}
		] call CBA_fnc_waitUntilAndExecute;
	};
};

if (missionNamespace getVariable ["cba_settings_ready",false]) then _code else { ["CBA_settingsInitialized",_code,[]] call CBA_fnc_addEventHandler; };
