#include "../script_component.hpp"
/*
Author: Redwan S / Nomas

Description:
    This function is used to add the "Import Plan" and "Delete Plan" actions.

Arguments:
	N/A

Return Value:
	<Nil>

Example:
	[] call AET_plan_importer_fnc_addActions;
*/

_importAction = [
    "AET_Import_Plan",
    "Import Plan",
    "\A3\ui_f\data\map\markers\military\marker_CA.paa",
    {[] call FUNC(selectChannel)},
    {[] call FUNC(showActionsCondition)},
    {},
    []
] call ace_interact_menu_fnc_createAction;

[player, 1,["ACE_SelfActions"], _importAction] call ace_interact_menu_fnc_addActionToObject;

_deleteAction = [
    "AET_Delete_Plan",
    "Delete Plan",
    "\A3\ui_f\data\map\groupicons\waypoint.paa",
    {[side player] call FUNC(deletePlan)},
    {[] call FUNC(showActionsCondition)},
    {},
    []
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions"], _deleteAction] call ace_interact_menu_fnc_addActionToObject;

