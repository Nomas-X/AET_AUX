#include "../script_component.hpp"

/*
Authors:
	Redwan S. / Nomas
	OverlordZorn

Description:
    This function is used to handle moving players into the assigned vehicle based on the provided module info.

Arguments:
	0. <Object> Unit to be moved into the vehicle.

	1. <Array>
		1.0. <String> Variable of the vehicle that the unit will be moved into.

		1.1. <Array> or <Boolean> Position of the location the player will be teleported to incase it was not possible to move him into the vehicle or if the value is boolean then the player will not be teleported anywhere in that case.

		1.2. <Boolean> Use cargo seats.

		1.3. <Boolean> Use turret seats.

		1.4. <Boolean> Use commander seat.

		1.5. <Boolean> Use gunner seats.

		1.6. <Boolean> Use driver seat.

Return Value:
	<Nil>

Example:
	[] call AET_start_in_vehicle_fnc_moveInto;
*/

params [
	["_unit", objNull, [objNull]],
	["_moveOptions", "404", [[]]]
];

diag_log format ["AET_start_in_vehicle | PLAYER MOVE ATTEMPT: %1 | %2", _unit, _moveOptions];

if ( _unit isEqualTo objNull || { _moveOptions isEqualTo "404" } ) exitWith {
	[{ [true] call FUNC(request_iterate) }] call CBA_fnc_execNextFrame;
};

_moveOptions params [
	["_vehicle", "objNull", [""]],
	["_backupLZ", false, [[], false]],
	["_cargo", true, [true]],
	["_turret", true, [true]],
	["_commander", false, [false]],
	["_gunner", false, [false]],
	["_driver", false, [false]]
];

// Defining Fallback Code: If LZ is defined, TP to LZ - if false or boolean, leave player where they are
private _fallback = { if !( _backupLZ isEqualType false ) then { 
	_unit allowDamage false;
	_unit setPosASL _backupLZ;
	_unit allowDamage true; 
	diag_log format ["AET_start_in_vehicle | FALLBACK CODE: %1 | %2", _unit, _moveOptions];
};};

if (isNil _vehicle) exitWith {
	call _fallback;
	[{ [true] call FUNC(request_iterate) }] call CBA_fnc_execNextFrame;
	diag_log format ["AET_start_in_vehicle | VAR DOES NOT EXIST: %1 | %2", _unit, _moveOptions];
};


diag_log format ["AET_start_in_vehicle | VAR EXISTS: %1 | %2", _unit, _moveOptions];

_vehicle = call compile _vehicle;

if (_vehicle getVariable [QGVAR(ignoreVehicle), false]) exitWith {
	call _fallback;
	[{ [true] call FUNC(request_iterate) }] call CBA_fnc_execNextFrame;
	diag_log format ["AET_start_in_vehicle | VEHICLE IGNORED: %1 | %2", _unit, _moveOptions];
};

// Check if Vehicle exists and is not destroyed.
if (
	isNull _vehicle
	||
	{
		!alive _vehicle
	}
) then _fallback else {

	diag_log format ["AET_start_in_vehicle | ACTUAL MOVE ATTEMPT: %1 | %2", _unit, _vehicle];
	// Check if we want and if we can move a unit in a seat, if not, check next, if nothing, use fallback.
	switch (true) do {
		case ( _driver    && { 0 < _vehicle emptyPositions "Driver"} ):       { [QGVAR(EH_moveIn), [_unit, _vehicle, "Driver", _backupLZ], _unit] call CBA_fnc_targetEvent; };		
		case ( _gunner    && { 0 < _vehicle emptyPositions "Gunner"} ):       { [QGVAR(EH_moveIn), [_unit, _vehicle, "Gunner", _backupLZ], _unit] call CBA_fnc_targetEvent; };	
		case ( _commander && { 0 < _vehicle emptyPositions "Commander"} ):    { [QGVAR(EH_moveIn), [_unit, _vehicle, "Commander", _backupLZ], _unit] call CBA_fnc_targetEvent; };	
		case ( _turret    && { 0 < _vehicle emptyPositions "Turret"} ):       { [QGVAR(EH_moveIn), [_unit, _vehicle, "Turret", _backupLZ], _unit] call CBA_fnc_targetEvent; };	
		case ( _cargo 	  && { 0 < _vehicle emptyPositions "Cargo"} ):        { [QGVAR(EH_moveIn), [_unit, _vehicle, "Cargo", _backupLZ], _unit] call CBA_fnc_targetEvent; };
		case (_driver && {_gunner && {_commander && {_turret && {_cargo}}}}): { [QGVAR(EH_moveIn), [_unit, _vehicle, "Any", _backupLZ], _unit] call CBA_fnc_targetEvent; };		
		default { call _fallback; };
	};
};
