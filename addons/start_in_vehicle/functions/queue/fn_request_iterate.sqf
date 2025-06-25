#include "../../script_component.hpp"

/*
* Author: Zorn
* will itterate over the GVAR ARRAY's first item and use the moveInto Function.
*
* Arguments:
*
* Return Value:
* None
*
* Example:
* [] call AET_start_in_vehicle_fnc_request_iterate
*
* Public: No
*/

params [["_isDoneMoving", false, [false]]];

private _queue = missionNamespace getVariable [QGVAR(queue),"404"];

if (_queue isEqualTo "404") exitWith {};
if (count _queue == 0) exitWith { missionNamespace setVariable [QGVAR(queue), nil] };
if (_isDoneMoving) exitWith {
	_queue deleteAt 0;
	[FUNC(request_iterate)] call CBA_fnc_execNextFrame;
};

private _unit = _queue#0#0;
private _vehicle = _queue#0#1#0;
diag_log format ["ITERATION ATTEMPT: %1 | %2 | %3", _queue, _unit, _vehicle];

if !(isNull _unit) exitWith { (_queue#0) call FUNC(moveInto); };

_queue deleteAt 0;

diag_log format ["QUEUE REMOVAL: %1 | %2 | %3", _queue, _unit, _vehicle];

[FUNC(request_iterate)] call CBA_fnc_execNextFrame;