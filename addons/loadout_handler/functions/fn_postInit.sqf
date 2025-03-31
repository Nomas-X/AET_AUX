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
		// This variable is used to make sure that the loadout functions do not start adding items at the same time to avoid issues with the container space / size calculation.
		GVAR(orderOfFunctions) = 0; 

		[player] call FUNC(basicEquipment);
		[player] call FUNC(containerBasedEquipment);
		[player] call FUNC(traitBasedEquipment);

		player addEventHandler ["Respawn", {
			params ["_unit", "_corpse"];
		
			if (SET(enableOnRespawn)) then {

				GVAR(orderOfFunctions) = 0;
				
				[_unit] call FUNC(basicEquipment);
				[_unit] call FUNC(containerBasedEquipment);
				[_unit] call FUNC(traitBasedEquipment);
			};
		}];
	};
};

if (missionNamespace getVariable ["cba_settings_ready",false]) then _code else { ["CBA_settingsInitialized",_code,[]] call CBA_fnc_addEventHandler; };