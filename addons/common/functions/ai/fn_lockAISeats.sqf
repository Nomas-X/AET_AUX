#include "../../script_component.hpp"

/*
Authors:
    Redwan S. / Nomas
    OverlordZorn

Description:

    This Function will take the provided vehicle, scan all seats that are occupied by AI and locks those to be not accessed by players.

Arguments:
    N/A

Return Value:
    <Nil>

Example:
    [] call AET_common_fnc_lockAISeats;
*/

// TODO

params [["_vehicle", objNull, [objNull]]];

if (isNull _vehicle) exitWith {};

if !(local _vehicle) exitWith { [_unit] remoteExecCall [QFUNC(lockAISeats), _vehicle, false] };

// Get all Units inside Vehicle

// Identify NON Player Units

// Identify Seats of Non Player Units

// Lock seats that that have non Player AI Units (Execpt Cargo and Fire From Vehicle I guess?)

// https://community.bistudio.com/wiki/lockDriver -> Needs to be local to the Vehicle 
// https://community.bistudio.com/wiki/lockTurret -> Needs to be local to the Vehicle
// https://community.bistudio.com/wiki/lockCargo -> Needs to be local to the Vehicle