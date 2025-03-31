#include "../script_component.hpp"

/*
Authors:
	Redwan S. / Nomas

Description:
    This function is used to handle adding the items to a container and ensuring that there is enough space by increasing max load of the container.

Arguments:
	0. <Object> The container that items will be added to and max load of will be increase

	1. <String> 
Return Value:
	<Nil>

Example:
	[player] call AET_loadout_handler_addItems;
*/

params [
	["_unitContainer", objNull, [objNull]],
	["_containerType", "Backpack", [""]],
	["_loadoutArray", [], [[]]]
];

private _containerCommand = switch (_containerType) do {
	case ("Backpack"): { "addItemToBackpack" };
	case ("Vest"): { "addItemToVest" };
	case ("Uniform"): { "addItemToUniform" };
};

// Retrieve and process the loadout
private _containerItemsArray = parseSimpleArray _loadoutArray;
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