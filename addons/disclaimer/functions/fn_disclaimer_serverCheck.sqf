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

private _array = missionNamespace getVariable ["AET_disclaimer_array", []];
private _uid = getPlayerUID _player;

switch (_mode) do {
    case "REQUEST": {
        if !(_uid in _array) then {
            ["AET_disclaimer_play", [], _player] call CBA_fnc_targetEvent;
        };

    };
    case "DONE": { _array pushBackUnique _uid; };
};

