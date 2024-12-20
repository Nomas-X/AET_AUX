#include "../script_component.hpp"

/*
Authors:
	Redwan S / Nomas
	OverlordZorn

Description:
    This function is used to add the custom CBA event handlers used by the disclaimer.

Arguments:
	N/A

Return Value:
	<Nil>

Example:
	[] call AET_disclaimer_fnc_pretInit;
*/

[QGVAR(EH_request), FUNC(serverCheck)] call CBA_fnc_addEventHandler;
[QGVAR(EH_play), FUNC(play)] call CBA_fnc_addEventHandler;