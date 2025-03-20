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
	["_containerType", "BACKPACK", [""]]
];

if (SET(medicLoadout) isEqualTo "") exitWith {};

if (_unit getUnitTrait "medic" && {_unit getVariable [QGVAR(excludeMedicEquipment), false]}) then {

	private _unitContainer = call compile format ["%1Container _unit", toLower(_containerType)];
	if (isNull _unitContainer) exitWith {};

	private _containerItemsArray = parseSimpleArray SET(medicLoadout);

	// Enhance the array with the mass of the requested class
	_containerItemsArray apply { 
		private _mass = getNumber (configFile >> "CfgWeapons" >> (_x#0) >> "ItemInfo" >> "mass");
		if (_mass == 0) then { _mass = getNumber (configFile >> "CfgMagazines" >> (_x#0) >> "mass") };
		if (_mass == 0) then { _mass = _mass max 0.1 };
		_x set [2, _mass];
	};

	// Establish total mass needed and if the current Container Limit is big enough or not
	private _totalMass = 0;
	private _itemsToAdd = [];
	{
		_x params ["_classname", "_quantity", "_itemMass"];
		_totalMass = _totalMass + _quantity * _itemMass;
		for "_i" from 1 to (_quantity) do { _itemsToAdd pushBack _classname };

	} forEach _containerItemsArray;

	private _currentMaxLimit = maxLoad _unitContainer;
	private _currentLoad = loadAbs _unitContainer;
	private _neededMaxLimit = _currentLoad + _totalMass;

	// Establish if Uniform Container needs to be bigger - if so, request it on the server.
	private _needsBiggerContainer = _neededMaxLimit > _currentMaxLimit;
	if (_needsBiggerContainer) then {
		[" + QGVAR(EH_setMaxLoad) + ", [_unitContainer, _neededMaxLimit]] call CBA_fnc_serverEvent;
	};

	// Add the Items to the uniform, ether now or WUAE
	private _params = [_unit, _itemsToAdd, _neededMaxLimit];
	private _code = { { _this#0 addItemTo%2 _x } forEach (_this#1); };

	if (_needsBiggerContainer) then {
		[{ ( maxLoad %1Container (_this#0) ) == (_this#2) }, _code, _params, 10,_code] call CBA_fnc_waitUntilAndExecute;
	} else {
		_params call _code;
	};
};

// uniformContainer
// vestContainer
// backpackContainer

private _compilableString = toString { systemChat "it works!" };
systemChat _compilableString;
sleep 2;
call compile _compilableString;