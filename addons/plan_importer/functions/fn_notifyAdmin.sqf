#include "../script_component.hpp"

/*
Authors:
	Redwan S / Nomas

Description:
    This function is used to notify the admin and log any plan import attempt that fails due to a parsing error.

Arguments:
	N/A

Return Value:
	<Nil>

Example:
	[] call AET_plan_importer_fnc_notifyAdmin;
*/

params ["_player", "_plan"];

diag_log format["Parsing error triggered by: %1 | ID64: %2 | Using: %3", name _player, getPlayerUID _player, _plan];

if (IS_ADMIN) then {
	hint format["%1 has encountered a parsing error when attempting a plan import!", name _player];
};