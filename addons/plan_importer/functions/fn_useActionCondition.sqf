#include "../script_component.hpp"
/*
Author: Redwan S. / Nomas

Description:
    This function is used as the condition to allow the usage of the "Import Plan" and "Delete Plan" functions.

Arguments:
	N/A

Return Value:
	<Boolean> If true then the actions will be shown, if false then the actions will be hidden.

Example:
	[] call AET_plan_importer_fnc_useActionCondition;
*/

( SET(groupLeaders_enabled) && { leader player == player } )
	||
{ ( IS_ADMIN )
	||
{ ( SET(rankBased_mode) <= rankId player ) 
	||
{ ( player getVariable [QGVAR(alwaysAllowed), false] ) } } }