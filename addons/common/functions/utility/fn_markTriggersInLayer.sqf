/*
Author: Redwan S. / Nomas
Description:
    This function takes all triggers in a Layer and places an area marker on it with its size and places a normal marker on the Trigger's center with the trigger's name.

Arguments:
	0. <String> Layer Name

Return Value: <nil>

Example:
	[_Triggers] call AET_common_fnc_markTriggersInLayer;
	[[_layer], "AET_common_fnc_getLayer", [], "AET_common_fnc_markTriggersInLayer"] remoteExec ["AET_common_fnc_useRemoteReturn", 2];
*/
params ["_layer"];

private _Triggers = _layer # 0 # 0;

private _counter = 1; // Why use counter when you can use _forEachIndex within the for each loop



// getMissionLayerEntities
{ [_x, _forEachIndex, "inLayer"] call FUNC(triggerToMarker) } forEach _Triggers;