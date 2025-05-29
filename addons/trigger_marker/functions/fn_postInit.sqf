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
	[] call AET_trigger_marker_fnc_postInit;
*/

private _code = {
	
	if (hasInterface) then {
		[
			{player diarySubjectExists "AntistasiEventTeamActions"},
			{
				GVAR(triggerMarkingDiary) = player createDiaryRecord ["AntistasiEventTeamActions", ["Trigger Marking Request", "<execute expression='[] call " + QFUNC(mark) + ";'>Show / Update Trigger Markers!</execute><br/><br/><execute expression='[] call " + QFUNC(demark) + ";'>Remove Trigger Markers!</execute>"]];
			},
			[]
		] call CBA_fnc_waitUntilAndExecute;
	};
};

if (missionNamespace getVariable ["cba_settings_ready",false]) then _code else { ["CBA_settingsInitialized",_code,[]] call CBA_fnc_addEventHandler; };