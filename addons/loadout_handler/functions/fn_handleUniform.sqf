#include "../script_component.hpp"

params ["_unit"];

private _unitUniform = uniformContainer _unit;
if (isNull _unitUniform) exitWith {};


private _uniformItemsArray = parseSimpleArray SET(uniformLoadoutHandler);

// AET_Some = _uniformItemsArray;


// Enhance the array with the mass of the requested class
_uniformItemsArray = _uniformItemsArray apply { 
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

} forEach _uniformItemsArray;

private _currentMaxLimit = maxLoad _unitUniform;
private _currentLoad = loadAbs _unitUniform;
private _neededMaxLimit = _currentLoad + _totalMass;


// Establish if Uniform Container needs to be bigger - if so, request it on the server.
private _needsBiggerUniform = _neededMaxLimit > _currentMaxLimit;
if (_needsBiggerUniform) then {
	[QGVAR(EH_setMaxLoad), [_unitUniform, _neededMaxLimit]] call CBA_fnc_serverEvent;
};


// Add the Items to the uniform, ether now or WUAE

private _params = [_unit, _itemsToAdd, _neededMaxLimit];
private _code = { { _this#0 addItemToUniform _x } forEach (_this#1); };

if (_needsBiggerUniform) then {
	[{ (maxLoad uniformContainer (_this#0)) == (_this#2) }, _code, _params, 10,_code] call CBA_fnc_waitUntilAndExecute;
} else {
	_params call _code;
};