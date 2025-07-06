#include "../script_component.hpp"

/*
Authors:
	Redwan S. / Nomas

Description:
    This function is used to handle adding the items to a container and ensuring that there is enough space by increasing max load of the container if the initial space is not enough.

Arguments:
	0. <Object> The unit that items will be added to its container.

	1. <Object> The container that items will be added to and max load of will be increase.

	2. <String> The container that the item will be added to, can be "Uniform", "Vest", or "Backpack".

	3. <Array> Contains arrays of the items to be added and the amount of each item.

		3.0. <Array>
		
			3.0.0. <String> Class name of the item to be added.

			3.0.1. <Number> Amount of the item to be added.
Return Value:
	<Nil>

Example:
	[
		player,
		uniformContainer player,
		"Uniform",
		[["ACE_EarPlugs", 1], ["ACE_elasticBandage", 10], ["HandGrenade", 3]]
	] call AET_loadout_handler_addItems;
*/

params [
	["_unit", objNull, [objNull]],
	["_unitContainer", objNull, [objNull]],
	["_containerType", "Backpack", [""]],
	["_loadoutArray", "", [""]]
];

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
	params ["_unitContainer", "_items"];
	{
		[_unitContainer, _x] call CBA_fnc_addItemCargo;
	} forEach _items;
};

// If container size change is needed, wait until it updates before adding items
if (_neededMaxLimit > _currentMaxLimit) then {
	[{
		maxLoad (_this#0) == (_this#3)
	}, {
		params ["_unit", "_unitContainer", "_containerCommand", "_itemsToAdd", "_addItemsFunc", "_neededMaxLimit"];
		[_this#0, _this#1] call _this#2;
	}, [_unitContainer, _itemsToAdd, _addItemsFunc, _neededMaxLimit], 10] call CBA_fnc_waitUntilAndExecute;
} else {
	[_unitContainer, _itemsToAdd] call _addItemsFunc;
};
