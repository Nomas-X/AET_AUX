#include "../script_component.hpp"
/*
Authors:
	Redwan S. / Nomas
	OverlordZorn

Description:
    This function is used to add the "Import Plan" and "Delete Plan" actions under the parent action "Plan Actions".

Arguments:
	N/A

Return Value:
	<Nil>

Example:
	[] call AET_plan_importer_fnc_addActions;
*/

params [
	["_unit", objNull, [objNull]],
	["_moduleInfo", "404", [[]]]
];

if ( _unit isEqualTo objNull || { _moduleInfo isEqualTo "404" } ) exitWith {};

_moduleInfo params [
	["_vehicle", objNull, [ objNull]],
	["_backupLZ", false, [[], false]],
	["_cargo", true, [true]],
	["_commander", false, [false]],
	["_gunner", false, [false]],
	["_driver", false, [false]]
];

// Defining Fallback Code: If LZ is defined, TP to LZ - if false, leave player where they are
private _fallback = { if ( _backupLZ isNotEqualTo false ) then { _unit setPosASL _backupLZ; }; };

// Check if Vehicle exists and is not destroyed.
if ((isNull _vehicle) || {!alive _vehicle}) then _fallback else {

	// Check if we want and if we can move a unit in a seat, if not, check next, if nothing, use fallback.
	switch (true) do {
		case ( _driver    && { 0 < _vehicle emptyPositions "Driver"} ):    { moveOut _unit; [ _unit, _vehicle ] remoteExec ["moveInDriver", _unit, false]; };		
		case ( _gunner    && { 0 < _vehicle emptyPositions "Gunner"} ):    { moveOut _unit; [ _unit, _vehicle ] remoteExec ["moveInGunner", _unit, false]; };		
		case ( _commander && { 0 < _vehicle emptyPositions "Commander"} ): { moveOut _unit; [ _unit, _vehicle ] remoteExec ["moveInCommander", _unit, false]; };	
		case ( _cargo 	  && { 0 < _vehicle emptyPositions "Cargo"} ):     { moveOut _unit; [ _unit, _vehicle ] remoteExec ["moveInCargo", _unit, false]; };		
		default { call _fallback; };
	};
};

[FUNC(request_iterate)] call CBA_fnc_execNextFrame;
