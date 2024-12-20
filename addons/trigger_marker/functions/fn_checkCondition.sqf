#include "../script_component.hpp"

/*
Authors:
	Redwan S. / Nomas

Description:
    This function is used to check if the user is allowed to execute the marking action,

Arguments:
	N/A

Return Value:
	<Nil>

Example:
	[] call AET_trigger_marker_fnc_checkCondition;
*/

( SET(visibilityMode) == "EVERYONE" )
	||
{ ( SET(visibilityMode) == "ZEUS" && { !isNull ( getAssignedCuratorLogic player ) } )
	||
{ ( SET(visibilityMode) == "ADMIN" && { IS_ADMIN } ) 
	||
{ ( player getVariable [QGVAR(alwaysAllowed), false] ) } } }