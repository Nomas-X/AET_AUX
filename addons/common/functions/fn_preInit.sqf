#include "../script_component.hpp"

/*
Authors:
	Redwan S / Nomas

Description:
    This function is used to add the custom CBA event handlers used by the module and functions.

Arguments:
	N/A

Return Value:
	<Nil>

Example:
	[] call AET_common_fnc_pretInit;
*/

[
    QGVAR(EH_unitIntoVehicle),
    {
        params ["_unit", "_slot", "_fallbackPos"];
        _slot params  ["_vic", "_type", "_index", "_path"];
		systemChat "TEST! #4";
        
		private _moveCode = {};
		switch (_type) do {
			case ("cargo"): {
				_moveCode = {
					_unit assignAsCargoIndex [_vic, _index];
					_unit moveInCargo [_vic, _index, false];
					_unit actionNow ["GetInCargo", _vic, _index];
				};
			};
			case ("turret"): {
				_moveCode = {
					_unit assignAsTurret [_vic, _path];
					_unit moveInTurret [_vic, _path];
					_unit actionNow ["GetInTurret", _vic, _path];
				};
			};
		};

		moveOut _unit;
        call _moveCode;
		if !(_unit in _vic) then {
			_unit allowDamage false;
			_unit setPosASL _fallbackPos;
			_unit allowDamage true; 
		};
    }
] call CBA_fnc_addEventHandler;

[QGVAR(EH_singleUnitToVehicle),FUNC(moveUnitsIntoVehicles)] call CBA_fnc_addEventHandler;
