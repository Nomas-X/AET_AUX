#include "../../script_component.hpp"

/*
* Author: Zorn
* Function to move (Teleport) Units into all available Cargo Seats of the provided Vehicles
*
* Arguments:
*   0: Units    <ARRAY of Objects>
*   1: Vehicles <ARRAY of Objects>
*   2: Position <ARRAY of ASL Position>
*
* Return Value:
* None
*
* Example:
* ['something', player, [0,0,0]] call prefix_component_fnc_functionname
*
* Public: No
*/

params ["_units", "_vehicles", "_fallbackPos"];

systemChat "TEST! #1";

private _slots = [];    // [vehicle, cargoIndex]

{
    private _vic = _x;
    // get all cargo seats, select only the empty ones, then create the individual [vic,index] slot, append the full list to the main array
    _slots append ( fullCrew [_vic, "cargo", true] select { isNull (_x select 0) } apply { [_vic, "cargo", _x select 2, _x select 3] } );
    _slots append ( fullCrew [_vic, "turret", true] select { isNull (_x select 0) } apply { [_vic, "turret", _x select 2, _x select 3] } );
} forEach _vehicles;
systemChat "TEST! #2";
{
    // take random slot, remove it from the main array and apply it to a player.
    private _unit = _x;
    private _slot = _slots deleteAt ( floor random count _slots );
    [QGVAR(EH_unitIntoVehicle), [_unit, _slot, _fallbackPos], _unit] call CBA_fnc_targetEvent;
	GVAR(TT) = [_unit, _slot, _fallbackPos];
	systemChat "TEST! #3";
} forEach _units;
