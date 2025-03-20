#include "../script_component.hpp"

/*
Authors:
	Redwan S / Nomas

Description:
    This function is used to initialize the loadout handling after CBA setting initialization if the CBA settings allows it.

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
		[player] call FUNC(MedicEquipment);

		player addEventHandler ["Respawn", {
			params ["_unit", "_corpse"];
		
			if (SET(enableOnRespawn)) then {
				[_unit] call FUNC(basicEquipment);
				[_unit] call FUNC(handleUniform);
				[_unit] call FUNC(MedicEquipment);
			};
		}];
	};
};

if (missionNamespace getVariable ["cba_settings_ready",false]) then _code else { ["CBA_settingsInitialized",_code,[]] call CBA_fnc_addEventHandler; };