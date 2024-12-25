#include "../../script_component.hpp"
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
	["_moduleInfo", [], [[]]]
];

private _queue = missionNamespace getVariable [QGVAR(queue), "404"];
if (_queue isEqualTo "404") then {
	_queue = [];
	missionNamespace setVariable [ QGVAR(queue), _queue ];
	[ FUNC(request_iterate) , [], 3] call CBA_fnc_waitAndExecute;	// initial start of the recursive iterating 
	ZRN_LOG_MSG(QUEUE Established and iteration requested);
};

_queue pushBack [_unit, _moduleInfo];

ZRN_LOG_MSG_2(ADDED TO QUEUE,_unit,_moduleInfo);