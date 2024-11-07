#include "../script_component.hpp"

/*
Author: Redwan S / Nomas

Description:
    This function is used to allow a player to import their plan from https://maps.plan-ops.fr to the game.

Arguments:
	0. <Object> Unit to execute the function on

	1. <Array> Includes the list of units <Object> that a unit must be in to get the ACE action

	2. <Number> (Optional) - The channel ID that the plan will be imported into, default is 0

Return Value: <nil>

Example:
	private _importPlanPlayerList = ["Z_1", "Z_2", "P_1"] call HR_fnc_ValidateObjects;
	[player, _importPlanPlayerList, 0] call AET_fnc_importPlan;
*/

[
	[
		[
			[["Global Chat", [1.00, 1.00, 1.00, 1.00]], [], [], [], "Import plan to Global chat", "", 0], 
			[["Side Chat", [0.00, 0.30, 0.60, 1.00]], [], [], [], "Import plan to Side chat", "", 1],
			[["Command Chat", [0.85, 0.85, 0.00, 1.00]], [], [], [], "Import plan to Command chat", "", 2],
			[["Group Chat", [0.00, 0.80, 0.00, 1.00]], [], [], [], "Import plan to Group chat", "", 3],
			[["Vehicle Chat", [0.70, 0.60, 0.00, 1.00]], [], [], [], "Import plan to Vehicle chat", "", 4]
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