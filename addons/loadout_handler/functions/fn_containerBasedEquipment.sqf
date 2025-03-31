#include "../script_component.hpp"

/*
Authors:
	Redwan S. / Nomas
	OverlordZorn

Description:
    This function is used to add items into a unit's container based on the CBA setting. The items will get added even if the container's original inventory size is not enough. The function will increase the space availble in the container until it can fit the needed items but not more.

	It should be possible to take out and put items back in.

Arguments:
	0. <Object> The unit that will have its container handled.

Return Value:
	<Nil>

Example:
	[] call AET_loadout_handler_fnc_containerBasedEquipment;
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
				{ (_loadoutArray isNotEqualTo "") } }
			) then {
				continue;
			};

			[_unitContainer, _x, _loadoutArray] call FUNC(addItems);
			
		} forEach ["Uniform", "Vest", "Backpack"];

		if !(_ignoreOrderOfFunctions) then {
			GVAR(orderOfFunctions) = 2;
		};
	},
	[_unit, _ignoreOrderOfFunctions],
	-1
] call CBA_fnc_waitUntilAndExecute;