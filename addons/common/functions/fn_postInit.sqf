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
	if (SET(antiBounceSmokeGL_enabled)) then {

		call FUNC(antiBounceSmokeGL);
	};
	
	if (hasInterface) then {
		
		player createDiarySubject ["AntistasiEventTeam","Antistasi Event Team"];
		GVAR(settingsDiary) = player createDiaryRecord ["AntistasiEventTeam", ["CBA Settings Comparison Request", "<execute expression='[player] call AET_common_fnc_compareAddonOptions;'>Execute!</execute>"]];
	};
};

if (missionNamespace getVariable ["cba_settings_ready",false]) then _code else { ["CBA_settingsInitialized",_code,[]] call CBA_fnc_addEventHandler; };