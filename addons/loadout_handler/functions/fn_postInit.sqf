#include "../script_component.hpp"
/*
Author: Redwan S / Nomas

Description:
    This function is used 

Arguments:
	N/A

Return Value:
	<Nil>

Example:
	[] call AET_loadout_handler_fnc_postInit;
*/

private _code = {
	if (SET(enabled) && {hasInterface}) then {

		[player] call FUNC(basicEquipment);
		[player] call FUNC(handleUniform);

		player addEventHandler ["Respawn", {
			params ["_unit", "_corpse"];
		
			if (SET(enableOnRespawn)) then {
				[_unit] call FUNC(basicEquipment);
				[_unit] call FUNC(handleUniform);
			};
		}];
	};
};

if (missionNamespace getVariable ["cba_settings_ready",false]) then _code else { ["CBA_settingsInitialized",_code,[]] call CBA_fnc_addEventHandler; };