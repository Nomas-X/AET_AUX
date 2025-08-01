#include "../../script_component.hpp"
/*
Author: Zorn
will itterate over the GVAR ARRAY's first item and use the moveInto Function.

Arguments:
	0. <Object> Unit to be added to the queue.

 	1. <Array>
 		1.0. <String> Variable of the vehicle that the unit will be moved into.
 
 		1.1. <Array> or <Boolean> Position of the location the player will be teleported to incase it was not possible to move him into the vehicle or if the value is boolean then the player will not be teleported anywhere in that case.
 
 		1.2. <Boolean> Use cargo seats.

		1.3. <Boolean> Use turret seats.
 
 		1.4. <Boolean> Use commander seat.

 		1.5. <Boolean> Use gunner seats.
 
 		1.6. <Boolean> Use driver seat.

Return Value:
	None

Example:
	[
		player,
		[
			"AET_HELI_1",
			[0,0,0],
			true,
			true,
			true,
			false,
			false,
			false,
			""
		]
	] call AET_start_in_vehicle_fnc_request_add

 Public: No
*/
params [
	["_unit", objNull, [objNull]],
	["_moveOptions", [], [[]]]
];

private _queue = missionNamespace getVariable [QGVAR(queue), "404"];
if (_queue isEqualTo "404") then {
	_queue = [];
	missionNamespace setVariable [ QGVAR(queue), _queue ];
	[ FUNC(request_iterate) , [], 3] call CBA_fnc_waitAndExecute;	// initial start of the recursive iterating 
	ZRN_LOG_MSG(QUEUE Established and iteration requested);
};

_queue pushBack [_unit, _moveOptions];
