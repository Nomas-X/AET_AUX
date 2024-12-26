#include "../../script_component.hpp"

/*
Authors:
    Redwan S. / Nomas
    OverlordZorn

Description:

    This Function will take the provided vehicle, scan all seats that are occupied by AI and locks those to be not accessed by players. When unlocking seats the function will unlock all seats.

Arguments:
    0. <Object> The vehicle that the function will handle.

Return Value:
    <Nil>

Example:
    [AET_HELI, true] call AET_common_fnc_lockAISeats;
*/

// TODO

params [
	["_vehicle", objNull, [objNull]],
	["_lockState", true, [true]]
];

if (isNull _vehicle) exitWith {};

if !(local _vehicle) exitWith { [_vehicle] remoteExecCall [QFUNC(lockAISeats), _vehicle, false] };

// If unit is not a player then enter the switch and check the unit's info to lock seat accordingly.
private _crew = fullCrew [_vehicle, "", !_lockState];

{
	if !(isPlayer _x # 0 ) then {
		switch (_x # 1) do {
			case ("driver"): {_vehicle lockDriver _lockState;};
			case ("cargo"): {_vehicle lockCargo [_x # 2, _lockState]};
			case ("commander");
			case ("turret"): {_vehicle lockTurret [_x # 3, _lockState]};
		};
	};
} forEach _crew;