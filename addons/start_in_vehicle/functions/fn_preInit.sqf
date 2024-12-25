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