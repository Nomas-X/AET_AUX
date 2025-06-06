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
			private _loadoutArray = "[]";
			private _unitContainer = objNull;
			private _containerType = "";
			private _hasTrait = false;
			private _isExcludedVariableName = format [QGVAR(exclude%1Equipment), _x];
			
			switch (_x) do {
				case "Medic": {
					_loadoutArray = SET(medicLoadout);
					_containerType = SET(medicLoadoutContainer);
					_hasTrait = [_unit] call ace_common_fnc_isMedic;
				};
				case "Engineer": {
					_loadoutArray = SET(engineerLoadout);
					_containerType = SET(engineerLoadoutContainer);
					_hasTrait = [_unit] call ace_common_fnc_isEngineer;
				};
				case "explosiveSpecialist": {
					_loadoutArray = SET(explosiveSpecialistLoadout);
					_containerType = SET(explosiveSpecialistLoadoutContainer);
					_hasTrait = [_unit] call ace_common_fnc_isEOD;
				};
			};

			switch (_containerType) do {
				case "Backpack": {_unitContainer = backpackContainer _unit;};
				case "Vest": {_unitContainer = vestContainer _unit;};
				case "Uniform": {_unitContainer = uniformContainer _unit;};
			};

			if (
				!(_hasTrait)
				||
				{
					(_unit getVariable [_isExcludedVariableName, false])
					||
					{
						(isNull _unitContainer)
						||
						{
							(_loadoutArray isEqualTo "" || {_loadoutArray isEqualTo "[]"})
						}
					}
				}
			) then {
				continue;
			};

			[_unit, _unitContainer, _containerType, _loadoutArray] call FUNC(addItems);
			
		} forEach ["Medic", "Engineer", "explosiveSpecialist"];

		if !(_ignoreOrderOfFunctions) then {
			GVAR(orderOfFunctions) = 3;
		};
	},
	[_unit, _ignoreOrderOfFunctions],
	-1
] call CBA_fnc_waitUntilAndExecute;