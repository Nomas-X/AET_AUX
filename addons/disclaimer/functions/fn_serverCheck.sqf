#include "../script_component.hpp"
/*
* Author: Nomas / Redwan S., Zorn
* [Description]
*
* Arguments:
*
* Return Value:
* None
*
* Example:
* ['something', player] call prefix_component_fnc_functionname
*
* Public: No
*/

params ["_mode", "_player"];

private _array = missionNamespace getVariable [QGVAR(arrayServer), []];
private _uid = getPlayerUID _player;

switch (_mode) do {
    case "REQUEST": {
        if !(_uid in _array) then {
            [QGVAR(EH_play), [], _player] call CBA_fnc_targetEvent;
        };

    };
    case "DONE": { _array pushBackUnique _uid; };
};

ZRN_LOG_1(_array);
missionNamespace setVariable [QGVAR(arrayServer), _array];