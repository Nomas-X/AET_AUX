/*
Author: Redwan S. / Nomas
Description:
    This function finds each trigger in the mission, places an area marker on it with its size and places a normal marker on the Trigger's center with the trigger's name.

Arguments: <nil>

Return Value: <nil>

Example:
	[] call AET_common_fnc_markTriggersInMission;
*/
private _Triggers = allMissionObjects "EmptyDetector";

{ [_x, _forEachIndex, "inMission"] call FUNC(triggerToMarker) } forEach _Triggers;