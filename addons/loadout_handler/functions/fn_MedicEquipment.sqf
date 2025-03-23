#include "../script_component.hpp"

/*
Authors:
	Redwan S. / Nomas

Description:
    This function is used to create the markers after the input has been parsed by the AET_plan_importer_fnc_importPlan function.

Arguments:
	0. <Number> Channel ID that the markers will be created in.

	1. <Array>
		1.1. <Array> Vanilla Arma 3 markers information.

		1.2. <Array> Poly / line markers information.

		1.3. <Array> Metis markers information.

Return Value:
	<Nil>

Example:
	[] call AET_plan_importer_fnc_createMarkers;
*/

params [
    ["_unit", objNull, [objNull]],
    ["_containerType", "Backpack", [""]]
];

if (SET(medicLoadout) isEqualTo "") exitWith {};

// Only apply to medics who are NOT excluded
if (!(_unit getUnitTrait "medic") || {_unit getVariable [QGVAR(excludeMedicEquipment), false]}) exitWith {};

// Ensure valid container type and prepare command
private _containerCommand = switch (_containerType) do {
	case ("Backpack"): { "addItemToBackpack" };
	case ("Vest"): { "addItemToVest" };
	case ("Uniform"): { "addItemToUniform" };
	default {"addItemToBackpack"};
};
private _unitContainer = call compile format ["%1Container _unit", _containerType];

if (isNull _unitContainer) exitWith {};

// Retrieve and process the medic loadout
private _containerItemsArray = parseSimpleArray SET(medicLoadout);
{
    private _mass = getNumber (configFile >> "CfgWeapons" >> (_x#0) >> "ItemInfo" >> "mass");
    if (_mass == 0) then { _mass = getNumber (configFile >> "CfgMagazines" >> (_x#0) >> "mass") };
    _x set [2, _mass max 0.1];
} forEach _containerItemsArray;

// Compute required mass
private _totalMass = 0;
private _itemsToAdd = [];
{
    _x params ["_classname", "_quantity", "_itemMass"];
    _totalMass = _totalMass + _quantity * _itemMass;
    for "_i" from 1 to _quantity do { _itemsToAdd pushBack _classname };
} forEach _containerItemsArray;

// Check load capacity
private _currentMaxLimit = maxLoad _unitContainer;
private _currentLoad = loadAbs _unitContainer;
private _neededMaxLimit = _currentLoad + _totalMass;

// Request bigger container if needed
if (_neededMaxLimit > _currentMaxLimit) then {
    [QGVAR(EH_setMaxLoad), [_unitContainer, _neededMaxLimit]] call CBA_fnc_serverEvent;
};

// Function to add items to the container
private _addItemsFunc = {
    params ["_unit", "_items", "_command"];
    {
		_unit call compile format ["%1 %2", _command, _x]
	} forEach _items;
};

// If container size change is needed, wait until it updates before adding items
if (_neededMaxLimit > _currentMaxLimit) then {
    [{
        (maxLoad (_this select 0)) == (_this select 2)
    }, {
        (_this select 0) call (_this select 3) select [1, _this select 1];
    }, [_unit, _itemsToAdd, _neededMaxLimit, _addItemsFunc, _containerCommand], 10] call CBA_fnc_waitUntilAndExecute;
} else {
    [_unit, _itemsToAdd, _containerCommand] call _addItemsFunc;
};