#include "../script_component.hpp"

/*
Authors:
	Redwan S. / Nomas
	OverlordZorn

Description:
    This function is used to creater area and name markers for all triggers present in the mission upon call.

Arguments:
	N/A

Return Value:
	<Nil>

Example:
	[] call AET_trigger_marker_fnc_mark;
*/

if !([] call FUNC(checkCondition)) exitWith {systemChat "You do not have the required permission to use this action!"};

[] call FUNC(demarkTriggers);

GVAR(triggerMarkers) = [];

private _triggersArray = 8 allObjects 7;

{
	// Get all the trigger info and prepare markaer names
	private _triggerPosition = getPosATL _x;
	private _triggerText = triggerText _x;
	private _triggerAreaInfo = triggerArea _x;

	// Creates the trigger area marker and sets its settings
	private _areaMarker = [Q(PREFIX),"Trigger","Area",_forEachIndex + 1] joinString "_";
	createMarkerLocal [_areaMarker, _triggerPosition];
	_areaMarker setMarkerSizeLocal [_triggerAreaInfo # 0, _triggerAreaInfo # 1];
	_areaMarker setMarkerDirLocal (_triggerAreaInfo # 2);
	_areaMarker setMarkerColorLocal "ColorCIV";
	_areaMarker setMarkerBrushLocal "DiagGrid";

	private _shape = ["ELLIPSE", "RECTANGLE"] select (_triggerAreaInfo # 3);
	_areaMarker setMarkerShapeLocal _shape;


	// Creates the trigger point marker and sets its settings
	private _pointMarker = [Q(PREFIX),"trigger","Point",_forEachIndex + 1] joinString "_";
	createMarkerLocal [_pointMarker, _triggerPosition];
	_pointMarker setMarkerColorLocal "ColorBlack";
	_pointMarker setMarkerTypeLocal "mil_dot";

	if (_triggerText == "") then { _triggerText = ["Trigger",_tag,_forEachIndex + 1] joinString "_" };
	_pointMarker setMarkerTextLocal _triggerText;

	GVAR(triggerMarkers) pushBack _areaMarker;
	GVAR(triggerMarkers) pushBack _pointMarker;
} forEach _triggersArray;