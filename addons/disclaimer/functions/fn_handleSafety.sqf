#include "../script_component.hpp"

/*
Authors:
	Redwan S / Nomas

Description:
    This function is used to handle the enabling and disabling of weapon safety on join.

Arguments:
	1. <Boolean> safety status to be applied.

Return Value:
	<Nil>

Example:
	[] call AET_disclaimer_fnc_handlesafety;
*/

params ["_safetyStatus"];

// Applying the requested safety status. false means safety off, true means safety on.
[{CBA_missionTime > 0}, { { [ACE_player, _x, _this # 0] call ace_safemode_fnc_setWeaponSafety; } forEachReversed (weapons ACE_player); }, [_safetyStatus]] call CBA_fnc_waitUntilAndExecute;

// Exit script if the requested safety status is false
if (!_safetyStatus) exitWith {};

// If the requested safety status is true, then handle its removal based on time or distance. Disclaimer is handled in fn_play.
switch (SET(disablesafety_mode)) do {
	case ("TIME"): {

		[{ [false] call FUNC(handlesafety) }, [], SET(disablesafety_time)] call CBA_fnc_waitAndExecute;
	};
	case ("DISTANCE"): {
		
		[{CBA_missionTime > 0 }, {
			private _spawnPos = getPosASL player;
			[{player distance2D _this # 0 >= SET(disablesafety_distance)}, { [false] call FUNC(handlesafety) }, [_spawnPos]] call CBA_fnc_waitUntilAndExecute;
		}] call CBA_fnc_waitUntilAndExecute;
	};
};