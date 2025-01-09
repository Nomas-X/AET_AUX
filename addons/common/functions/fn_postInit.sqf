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
	player createDiarySubject ["AntistasiEventTeam","Antistasi Event Team"];

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

		player createDiaryRecord ["AntistasiEventTeamActions", ["Trigger Marking Request", "<execute expression='[] call " + "AET_trigger_marker_fnc_mark" + ";'>Show / Update Trigger Markers!</execute><br/><br/><execute expression='[] call " + "AET_trigger_marker_fnc_demark" + ";'>Remove Trigger Markers!</execute>"]];

		GVAR(settingsDiary) = player createDiaryRecord ["AntistasiEventTeamActions", ["CBA Settings Comparison Request", "<execute expression='[player] call " + QFUNC(compareAddonOptions) + ";'>Execute!</execute>"]];
	};
};

if (missionNamespace getVariable ["cba_settings_ready",false]) then _code else { ["CBA_settingsInitialized",_code,[]] call CBA_fnc_addEventHandler; };