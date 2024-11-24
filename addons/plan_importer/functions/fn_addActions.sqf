#include "../script_component.hpp"
/*
Authors:
	Redwan S. / Nomas

Description:
    This function is used to add the "Import Plan" and "Delete Plan" actions under the parent action "Plan Actions".

Arguments:
	N/A

Return Value:
	<Nil>

Example:
	[] call AET_plan_importer_fnc_addActions;
*/

private _parentAction = [
	"AET_Plan_Actions",
	"Plan Actions",
	"",
	{},
	{true}
] call ace_interact_menu_fnc_createAction;

[player, 1,["ACE_SelfActions"], _parentAction] call ace_interact_menu_fnc_addActionToObject;

private _importAction = [
    "AET_Import_Plan",
    "Import Plan",
    "\A3\ui_f\data\map\markers\military\marker_CA.paa",
    {[] call FUNC(selectChannel)},
    {[] call FUNC(showActionsCondition)},
    {},
    []
] call ace_interact_menu_fnc_createAction;

[player, 1,["ACE_SelfActions", "AET_Plan_Actions"], _importAction] call ace_interact_menu_fnc_addActionToObject;

private _deleteAction = [
    "AET_Delete_Plan",
    "Delete Plan",
    "\A3\ui_f\data\map\groupicons\waypoint.paa",
    {[side player] call FUNC(deletePlan)},
    {[] call FUNC(showActionsCondition)},
    {},
    []
] call ace_interact_menu_fnc_createAction;

[player, 1, ["ACE_SelfActions", "AET_Plan_Actions"], _deleteAction] call ace_interact_menu_fnc_addActionToObject;