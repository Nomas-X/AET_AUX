#include "../script_component.hpp"
/*
Authors:
	Redwan S. / Nomas
	OverlordZorn

Description:
    This function is used to handle requests to play the disclaimer on the server. If the player has already seen the disclaimer (is in the arrayServer) then it will not show it to him. If it is a new player then it will show it to him. Once the disclaimer is done playing it will send a "DONE" request which adds the player to the (arrayServer).

Arguments:
	0. <String> Request Mode. Expected values are either "REQUEST" or "DONE".

	1. <Object> The player that is being checked.

Return Value:
	<Nil>

Example:
	["REQUEST", player] call AET_disclaimer_fnc_serverCheck;
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