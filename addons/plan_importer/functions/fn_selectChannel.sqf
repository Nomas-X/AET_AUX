#include "../script_component.hpp"
/*
Author: Redwan S. / Nomas

Description:
    This function is used to call for a select menu to allow the players to choose the plan import channel if the CBA setting allows it.

Arguments:
	N/A

Return Value:
	<Nil>

Example:
	[] call AET_plan_importer_fnc_selectChannel;
*/

if (SET(importChannel) == -1) then {
	[
		[
			[
				[["Global Chat", [1.00, 1.00, 1.00, 1.00]], [], [], [], "Import plan to Global chat", "", 0], 
				[["Side Chat", [0.13, 0.77, 1.00, 1.00]], [], [], [], "Import plan to Side chat", "", 1],
				[["Command Chat", [1, 0.96, 0.4, 1.00]], [], [], [], "Import plan to Command chat", "", 2]
			],
			0,
			false
		],
		"Import Channel Selection",
		[
			{
				if (_confirmed) then {
					[_value] call FUNC(importPlan);
				} else {
					systemChat "Plan import cancelled";
				};
			},
			[]
		],
		"Confirm Channel", // reverts to default
		"Cancel"  // reverts to default, disable cancel option
	] call CAU_UserInputMenus_fnc_listbox;
} else {
	[SET(importChannel)] call FUNC(importPlan);
};