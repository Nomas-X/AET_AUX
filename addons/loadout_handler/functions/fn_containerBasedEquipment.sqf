#include "../script_component.hpp"

/*
Authors:
	Redwan S. / Nomas
	OverlordZorn

Description:
	This function applies inventory loadouts to a unit's containers (uniform, vest, backpack) based on CBA settings.

	It ensures that all items are added, even if the container’s default capacity is insufficient. If needed, the container's max load is increased just enough to accommodate all items. This modification is specific to the currently equipped container and resets when the container is changed.

Arguments:
	0. <Object> The unit whose containers will receive the configured inventory items.
	
	1. <Boolean> (Optional) Whether to ignore the enforced function order check. Default is false.

Return Value:
	<Nil>

Example:
	[player] call AET_loadout_handler_fnc_containerBasedEquipment;
*/

params [
	["_unit", objNull, [objNull]],
	["_ignoreOrderOfFunctions", false, [false]]
];

[
	{GVAR(orderOfFunctions) == 1 || _this#1},
	{
		params ["_unit", "_ignoreOrderOfFunctions"];
		{
			private _isExcludedVariableName = format [QGVAR(exclude%1Equipment), _x];
			private _loadoutArray = call compile format[QSET(%1Inventory), toLower(_x)];
			private _unitContainer = call compile format ["%1Container _unit", toLower(_x)];

			if (
				(_unit getVariable [_isExcludedVariableName, false])
				||
				{ (isNull _unitContainer)
				||
				{ (_loadoutArray isEqualTo "") } }
			) then {
				continue;
			};

			[_unit, _unitContainer, _x, _loadoutArray] call FUNC(addItems);
			
		} forEach ["Uniform", "Vest", "Backpack"];

		if !(_ignoreOrderOfFunctions) then {
			GVAR(orderOfFunctions) = 2;
		};
	},
	[_unit, _ignoreOrderOfFunctions],
	-1
] call CBA_fnc_waitUntilAndExecute;
