/*
* Authors: 
* Zorn
* Nomas / Redwan S.
* Init Function to be executed at Mission Start and on player respawn
*/

if (hasInterface) then {
	[player] call FFPP_fnc_punishment_FF_addEH;
	player addEventHandler ["Respawn", {
		params ["_unit", "_corpse"];
		[player] call FFPP_fnc_punishment_FF_addEH;
	}];
};