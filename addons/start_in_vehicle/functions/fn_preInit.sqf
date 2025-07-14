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
	[] call AET_start_in_vehicle_fnc_pretInit;
*/

[QGVAR(EH_request), FUNC(request_add)] call CBA_fnc_addEventHandler;

[QGVAR(EH_iterate), {[{ [true] call FUNC(request_iterate) }] call CBA_fnc_execNextFrame;}] call CBA_fnc_addEventHandler;

[QGVAR(EH_moveIn), {
	params ["_unit", "_vehicle", "_seatType", "_fallbackPos"];
	private _moveCode = {};
	
	switch (_seatType) do {
		case ("Driver"): {
			_moveCode = {
				_unit moveInDriver _vehicle;
				player actionNow ["getInDriver", _vehicle];
			};
		};
		case ("Gunner"): {
			_moveCode = {
				_unit moveInGunner _vehicle;
				player actionNow ["getInGunner", _vehicle];

			};
		};
		case ("Commander"): {
			_moveCode = {
				_unit moveInCommander _vehicle;
				player actionNow ["getInCommander", _vehicle];
			};
		};
		case ("Turret"): {
			_moveCode = {
				_unit moveInTurret _vehicle;
				// player actionNow ["getInTurret", _vehicle];
			};
		};
		case ("Cargo"): {
			_moveCode = {
				_unit moveInCargo _vehicle;
				// player actionNow ["getInCargo", _vehicle];
			};
		};
		case ("Any"): {
			_moveCode = {
				_unit moveInAny _vehicle;
			};
		};
	};
	_unit moveOut _vehicle;
	call _moveCode;
	if !(_unit in _vehicle) then {
		_unit allowDamage false;
		_unit setPosASL _fallbackPos;
		_unit allowDamage true; 
	};
	[QGVAR(EH_iterate), [true]] call CBA_fnc_serverEvent;
}] call CBA_fnc_addEventHandler;
