/*
Author: Redwan S. / Nomas
Description:
    This function finds each trigger in the mission, places an area marker on it with its size and places a normal marker on the Trigger's center with the trigger's name.

Arguments: <nil>

Return Value: <nil>

Example:
	[] call AET_fnc_markTriggersInMission;
*/
private _allMissionTriggers = allMissionObjects "EmptyDetector";
private _counter = 1;

{
	// Get all the trigger info and prepare markaer names
	private _triggerPosition = getPosATL _x;
	private _triggerText = triggerText _x;
	private _triggerAreaMarkerName = "triggerArea_AETScript_InMission_" + str(_counter);
	private _triggerPointMarkerName = "triggerPoint_AETScript_InMission_" + str(_counter);
	private _triggerAreaInfo = triggerArea _x;

	// Creates the trigger area marker and sets its settings
	createMarkerLocal [_triggerAreaMarkerName, _triggerPosition];
	_triggerAreaMarkerName setMarkerSizeLocal [_triggerAreaInfo select 0, _triggerAreaInfo select 1];
	_triggerAreaMarkerName setMarkerDirLocal (_triggerAreaInfo select 2);
	_triggerAreaMarkerName setMarkerColorLocal "ColorCIV";
	_triggerAreaMarkerName setMarkerBrushLocal "DiagGrid";

	if (_triggerAreaInfo select 3) then {
		_triggerAreaMarkerName setMarkerShapeLocal "RECTANGLE";
	} else {
		_triggerAreaMarkerName setMarkerShapeLocal "ELLIPSE";
	};

	// Creates the trigger point marker and sets its settings
	createMarkerLocal [_triggerPointMarkerName, _triggerPosition];
	_triggerPointMarkerName setMarkerColorLocal "ColorBlack";
	_triggerPointMarkerName setMarkerTypeLocal "mil_dot";

	if (_triggerText != "") then {
		_triggerPointMarkerName setMarkerTextLocal _triggerText;
	} else {
		_triggerPointMarkerName setMarkerTextLocal ("Trigger_" + str(_counter) + "_InMission");
	};

	_counter = _counter + 1;
} forEach _allMissionTriggers;