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

	player createDiarySubject ["AntistasiEventTeamActions","Antistasi Event Team Actions"];
	player createDiarySubject ["AntistasiEventTeam","Antistasi Event Team"];

	if (SET(antiBounceSmokeGL_enabled)) then {

		call FUNC(antiBounceSmokeGL);
	};
	
	if (hasInterface) then {
		
		GVAR(settingsDiary) = player createDiaryRecord ["AntistasiEventTeamActions", ["CBA Settings Comparison Request", "<execute expression='[player] call" + QFUNC(compareAddonOptions) + ";'>Execute!</execute>"]];
		GVAR(triggerMarkingDiary) = player createDiaryRecord ["AntistasiEventTeamActions", ["Trigger Marking Request", "<execute expression='[] call" + QFUNC(markTriggers) + ";'>Show / Update Trigger Markers!</execute><br/><br/><execute expression='[] call" + QFUNC(demarkTriggers) + ";'>Remove Trigger Markers!</execute>"]];
	};
};

if (missionNamespace getVariable ["cba_settings_ready",false]) then _code else { ["CBA_settingsInitialized",_code,[]] call CBA_fnc_addEventHandler; };