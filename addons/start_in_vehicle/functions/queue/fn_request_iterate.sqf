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

private _queue = missionNamespace getVariable [QGVAR(queue),"404"];

if (_queue isEqualTo "404") exitWith {};
if (count _queue == 0) exitWith { missionNamespace setVariable [QGVAR(queue), nil] };


private _unit = _queue#0#0;
private _vehicle = _queue#0#1#0;

if !(_unit in _vehicle || {isNull _unit}) exitWith { (_queue # 0) call FUNC(moveInto); };

_queue deleteAt 0;

[FUNC(request_iterate)] call CBA_fnc_execNextFrame;