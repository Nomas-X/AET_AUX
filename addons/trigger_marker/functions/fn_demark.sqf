#include "../script_component.hpp"

/*
Authors:
	Redwan S. / Nomas

Description:
    This function is used to delete area and name markers for all triggers present in the mission upon call.

Arguments:
	N/A

Return Value:
	<Array> Empty array to be used by the marking function.

Example:
	[] call AET_trigger_marker_fnc_demark;
*/

{
	deleteMarkerLocal _x;
} forEach GVAR(triggerMarkers);

[];