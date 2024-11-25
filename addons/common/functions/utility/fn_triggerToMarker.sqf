#include "../../script_component.hpp"

/*
* Author: Zorn
* code to actually do the marker
*
* Arguments:
*
* Return Value:
* None
*
* Example:
* ['something', player] call prefix_component_fnc_functionname
*
* Public: No
*/

params ["_trigger", "_index", "_tag" ];

// Get all the trigger info and prepare markaer names
private _triggerPosition = getPosATL _trigger;
private _triggerText = triggerText _trigger;
private _triggerAreaInfo = triggerArea _trigger;

// Creates the trigger area marker and sets its settings
private _marker_area = [Q(PREFIX),"Trigger","Area",_tag,_index] joinString "_";
createMarkerLocal [_marker_area, _triggerPosition];
_marker_area setMarkerSizeLocal [_triggerAreaInfo # 0, _triggerAreaInfo # 1];
_marker_area setMarkerDirLocal (_triggerAreaInfo # 2);
_marker_area setMarkerColorLocal "ColorCIV";
_marker_area setMarkerBrushLocal "DiagGrid";

private _shape = if (_triggerAreaInfo # 3) then { "RECTANGLE" } else { "ELLIPSE" };
_marker_area setMarkerShapeLocal _shape;


// Creates the trigger point marker and sets its settings
private _marker_point = [Q(PREFIX),"trigger","Point",_index] joinString "_";
createMarkerLocal [_marker_point, _triggerPosition];
_marker_point setMarkerColorLocal "ColorBlack";
_marker_point setMarkerTypeLocal "mil_dot";

if (_triggerText == "") then { _triggerText = ["Trigger",_tag,_index] joinString "_" };
_marker_point setMarkerTextLocal _triggerText;