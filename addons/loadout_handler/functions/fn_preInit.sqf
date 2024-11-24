#include "../script_component.hpp"

/*
Authors:
	OverlordZorn

Description:
    This function is used to add the custom CBA event handlers used by the loadout handling functions.

Arguments:
	N/A

Return Value:
	<Nil>

Example:
	[] call AET_loadout_handler_fnc_pretInit;
*/

[QGVAR(EH_setMaxLoad), { _this#0 setMaxLoad _this#1 } ] call CBA_fnc_addEventHandler;

