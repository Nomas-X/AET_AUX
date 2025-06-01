#include "../script_component.hpp"

/*
Authors:
	Redwan S. / Nomas

Description:
	This function applies trait-based equipment to a unit based on configured CBA settings.

	If the unit has a supported trait (Medic, Engineer, or ExplosiveSpecialist), the function adds the corresponding items to the designated container (uniform, vest, or backpack). The container’s capacity is temporarily increased if necessary to fit all items.

	The selected container type and items are defined in the associated CBA settings (e.g., "Medic Loadout Container").

Arguments:
	0. <Object> The unit that will receive trait-based equipment.

	1. <Boolean> (Optional) Whether to ignore the enforced function order check. Default is false.

Return Value:
	<Nil>

Example:
	[player] call AET_loadout_handler_fnc_traitBasedEquipment;
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
			private _isExcludedVariableName = format [QGVAR(exclude%1Equipment), _x#0];
			private _loadoutArray = call compile format[QSET(%1Loadout), toLower(_x#0)];
			private _containerType = call compile format [QSET(%1LoadoutContainer), toLower(_x#0)];
			private _unitContainer = call compile format ["%1Container _unit", _containerType];

			if (
				!(_unit getUnitTrait _x#0 || { _unit getVariable [_x#1, 0] > 0 })
				||
				{ (_unit getVariable [_isExcludedVariableName, false])
				||
				{ (isNull _unitContainer)
				||
				{ (_loadoutArray isEqualTo "") } } }
			) then {
				continue;
			};

			[_unit, _unitContainer, _containerType, _loadoutArray] call FUNC(addItems);
			
		} forEach [["Medic", "ace_medical_medicClass "], ["Engineer", "ace_isEngineer "], ["ExplosiveSpecialist", "ace_isEOD "]];

		if !(_ignoreOrderOfFunctions) then {
			GVAR(orderOfFunctions) = 3;
		};
	},
	[_unit, _ignoreOrderOfFunctions],
	-1
] call CBA_fnc_waitUntilAndExecute;