#include "../script_component.hpp"
/*
Author: Redwan S. / Nomas

Description:
    This function is used as the condition to show the "Import Plan" and "Delete Plan" functions.

Arguments:
	N/A

Return Value:
	<Boolean> If true then the actions will be shown, if false then the actions will be hidden.

Example:
	[] call AET_plan_importer_fnc_showActionsCondition;
*/

( SET(groupLeaders_enabled) && { leader player == player } ) || { ( SET(admin_enabled) && { IS_ADMIN } ) || { ( SET(rankBased_mode) < rankId player ) } || { ( player getVariable [QGVAR(alwaysAllowed), false] ) } }
// Making something like this a one line argument makes it a pain in the ass to read and to understand - right now i do not know if you fucked up lazy evaluation here or if the last bit is on purpose.
// Honestly, i think this will fail once it eaches the last OR in the current state, because a || needs a bool as the first argument, not code