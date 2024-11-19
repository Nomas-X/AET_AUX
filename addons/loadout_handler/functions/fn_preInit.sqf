#include "../script_component.hpp"

/*
* Author: Zorn
* PreInit Function
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


[QGVAR(EH_setMaxLoad), { _this#0 setMaxLoad _this#1 }] call CBA_fnc_addEventHandler;