#include "../script_component.hpp"

params ["_unit"];

private _unitUniform = uniformContainer _unit;
private _uniformItemsArray = parseSimpleArray SET(uniformLoadoutHandler);

AET_Some = _uniformItemsArray;

if (!isNull _unitUniform) then {
	
	{
		private _canAddItem = [_unit, _x select 0, _x select 1, true, false, false] call CBA_fnc_canAddItem;
		
		if (_canAddItem) then {
			for "_i" from 1 to (_x select 1) do {
				_unit addItemToUniform (_x select 0);
			};
		} else {

			private _uniformCurrentLoad = maxLoad _unitUniform;
			private _itemMass = getNumber (configFile >> "CfgWeapons" >> (_x select 0) >> "ItemInfo" >> "mass");
			private _totalMass = _itemMass * (_x select 1);
			private _newUniformMaxLoad = _totalMass + (loadAbs _unitUniform);
			
			[_unitUniform, _newUniformMaxLoad] remoteExec ["setMaxLoad", 2];
			
			waitUntil {sleep 0.5; (maxLoad _unitUniform) == _newUniformMaxLoad};
			
			for "_i" from 1 to (_x select 1) do {
				_unit addItemToUniform (_x select 0);
			};
		};
	} forEach _uniformItemsArray;

};