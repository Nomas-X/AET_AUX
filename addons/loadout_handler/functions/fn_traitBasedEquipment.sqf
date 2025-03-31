#include "../script_component.hpp"

/*
Authors:
	Redwan S. / Nomas

Description:
    This function is used to handle trait based equipment based on the relevant CBA settings.

Arguments:
	0. <Object> Unit to add equipment to based on traits.

Return Value:
	<Nil>

Example:
	[player] call AET_loadout_handler_traitBasedEquipment;
*/

params [
	["_unit", objNull, [objNull]],
	["_ignoreOrderOfFunctions", false, [false]]
];

[
	{GVAR(orderOfFunctions) == 2 || _this#1},
	{
		params ["_unit", "_ignoreOrderOfFunctions"];
		{
			private _isExcludedVariableName = format [QGVAR(exclude%1Equipment), _x];
			private _loadoutArray = call compile format[QSET(%1Loadout), toLower(_x)];
			private _containerType = call compile format [QSET(%1LoadoutContainer), toLower(_x)];
			private _unitContainer = call compile format ["%1Container _unit", _containerType];

			if (
				!(_unit getUnitTrait _x)
				||
				{ (_unit getVariable [_isExcludedVariableName, false])
				||
				{ (isNull _unitContainer)
				||
				{ (_loadoutArray isNotEqualTo "") } } }
			) then {
				continue;
			};

			[_unitContainer, _containerType, _loadoutArray] call FUNC(addItems);
			
		} forEach ["Medic", "Engineer", "ExplosiveSpecialist"];

		if !(_ignoreOrderOfFunctions) then {
			GVAR(orderOfFunctions) = 3;
		};
	},
	[_unit, _ignoreOrderOfFunctions],
	-1
] call CBA_fnc_waitUntilAndExecute;