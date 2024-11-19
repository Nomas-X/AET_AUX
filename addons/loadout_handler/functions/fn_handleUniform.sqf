#include "../script_component.hpp"

params ["_unit"];

private _unitUniform = uniformContainer _unit;
private _uniformItemsArray = parseSimpleArray SET(uniformLoadoutHandler);

AET_Some = _uniformItemsArray;

if (!isNull _unitUniform) then {
	
	{
		_x params ["_classname", "_quantity"];

		private _canAddItem = [_unit, _classname, _quantity, true, false, false] call CBA_fnc_canAddItem;
		if (_canAddItem) then {
			for "_i" from 1 to (_quantity) do {
				_unit addItemToUniform (_classname);
			};
		} else {

			private _uniformCurrentLoad = maxLoad _unitUniform;
			private _itemMass = getNumber (configFile >> "CfgWeapons" >> _classname >> "ItemInfo" >> "mass");
			_itemMass = _itemMass max 0.1;
			private _totalMass = _itemMass * (_quantity);
			private _newUniformMaxLoad = _totalMass + (loadAbs _unitUniform);
			
			[_unitUniform, _newUniformMaxLoad] remoteExec ["setMaxLoad", 2];
			
			waitUntil {sleep 0.5; (maxLoad _unitUniform) == _newUniformMaxLoad}; // REE
			
			for "_i" from 1 to (_quantity) do {
				_unit addItemToUniform (_classname);
			};
		};
	} forEach _uniformItemsArray;
};