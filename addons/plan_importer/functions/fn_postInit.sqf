#include "../script_component.hpp"
/*
Author: Redwan S / Nomas

Description:
    This function is used post initialization when the player joins to decide add the the "Import Plan" and "Delete Plan" actions if the CBA setting allows it.

Arguments:
	N/A

Return Value:
	<Nil>

Example:
	[] call AET_plan_importer_fnc_postInit;
*/

private _code = {
	if (SET(enabled) && {hasInterface}) then {

		[] call FUNC(addActions);
	};
};

["CBA_SettingChanged", {
    params ["_setting", "_value"];
	if (_value) then { [] call FUNC(addActions) } else { [] call FUNC(removeActions) }
}] call CBA_fnc_addEventHandler;

if (missionNamespace getVariable ["cba_settings_ready",false]) then _code else { ["CBA_settingsInitialized",_code,[]] call CBA_fnc_addEventHandler; };