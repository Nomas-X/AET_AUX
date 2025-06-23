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
		1.1. <Object> Vehicle that the unit will be moved into.

		1.2. <Array> or <Boolean> Position of the location the player will be teleported to incase it was not possible to move him into the vehicle or if the value is boolean then the player will not be teleported anywhere in that case.

		1.3. <Boolean> Use cargo seats

		1.4. <Boolean> Use commander seat

		1.5. <Boolean> Use gunner seats

		1.6. <Boolean> Use driver seat

		1.7. <String> The module deletion condition. Unused in this fucntion.

Return Value:
	<Nil>

Example:
	[] call AET_start_in_vehicle_fnc_moveInto;
*/

params [
	["_unit", objNull, [objNull]],
	["_moveOptions", "404", [[]]]
];

if ( _unit isEqualTo objNull || { _moveOptions isEqualTo "404" } ) exitWith {

	[FUNC(request_iterate)] call CBA_fnc_execNextFrame;
};

_moveOptions params [
	["_vehicle", objNull, [objNull]],
	["_backupLZ", false, [[], false]],
	["_cargo", true, [true]],
	["_commander", false, [false]],
	["_gunner", false, [false]],
	["_driver", false, [false]]
];

// Defining Fallback Code: If LZ is defined, TP to LZ - if false or boolean, leave player where they are
private _fallback = { if !( _backupLZ isEqualType false ) then { 
	_unit allowDamage false;
	_unit setPosASL _backupLZ;
	_unit allowDamage true; 
}; };

// Check if Vehicle exists and is not destroyed.
if (
	isNil "_vehicle"
	||
	{
		isNull _vehicle
		||
		{
			!alive _vehicle
		}
	}
) then _fallback else {

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