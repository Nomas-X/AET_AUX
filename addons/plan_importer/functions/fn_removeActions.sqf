/*
Author: Redwan S. / Nomas

Description:
   This function is used to remove the "Import Plan" and "Delete Plan" actions in case of CBA setting change.

Arguments:
	N/A

Return Value:
	<Nil>

Example:
	[] call AET_plan_importer_fnc_createMarkers;
*/

[player, 1, ["ACE_SelfActions", "AET_Import_Plan"]] call ace_interact_menu_fnc_removeActionFromObject;
[player, 1, ["ACE_SelfActions", "AET_Delete_Plan"]] call ace_interact_menu_fnc_removeActionFromObject;