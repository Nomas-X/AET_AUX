#include "../script_component.hpp"
/*
Author: Redwan S. / Nomas

Description:
    This function is used to delete an imported plan on a certain side.

Arguments:
	0. <Side> The side that will get its plan deleted.

Return Value:
	<Boolean> It is used to signify that the markers are no longer being deleted and that the function has finished.

Example:
	[west] call AET_plan_importer_fnc_deleteMarkers;
*/

params ["_side"];

private _markersVariableNames = [QGVAR(allMarkers) + "_" + str(_side), QGVAR(metisMarkers) + "_" + str(_side)];

private _markersVariableNames = [
	[QGVAR(allMarkers),   _side] joinString "_",
	[QGVAR(metisMarkers), _side] joinString "_"
];

private _deleteMarkersCode = format [
	"if (!isNil ""%1"") then {
		{
			deleteMarker _x;
		} forEach %1;
	};

	if (!isNil ""%2"") then {
		{
			[_x] call mts_markers_fnc_deleteMarker;
		} forEach %2;
	};

	%1 = [];
	%2 = [];

", _markersVariableNames # 0, _markersVariableNames # 1];

[] call (compile _deleteMarkersCode);

systemChat "Current plan deleted";
[format["Plan deletion done by: %1 | ID64: %2 | Side: %3", name player, getPlayerUID player, _side]] remoteExec ["diag_log", 2, false];

false;