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
	[] call AET_loadout_handler_fnc_preInit;
*/

[
	QGVAR(EH_setMaxLoad),
	{
		_this#0 setMaxLoad _this#1;
		diag_log (format ["SKY_%1: %2", QGVAR(EH_setMaxLoad), _this]);
	}
] call CBA_fnc_addEventHandler;

SKY_ace_wardrobe_itemChangedStart = [
	"ace_wardrobe_itemChangedStart",
	{
		params ["_player", "_oldItem", "_newItem", "_itemType", "_extendedInfo"];

		// Left here for easier debugging.
		// [_player, _oldItem, _newItem, _itemType, _extendedInfo] call COMPILE_FILE(functions\fn_itemChangedStart);
		[_player, _oldItem, _newItem, _itemType, _extendedInfo] call AET_loadout_handler_fnc_itemChangedStart;
	}
] call CBA_fnc_addEventHandler;
diag_log (format ["SKY_ace_wardrobe_itemChangedStart: %1", SKY_ace_wardrobe_itemChangedStart]);

SKY_ace_wardrobe_itemChangedEnd = [
	"ace_wardrobe_itemChangedEnd",
	{
		params ["_player", "_oldItem", "_newItem", "_itemType", "_extendedInfo"];

		// Left here for easier debugging.
		// [_player, _oldItem, _newItem, _itemType, _extendedInfo] call COMPILE_FILE(functions\fn_itemChangedEnd);
		[_player, _oldItem, _newItem, _itemType, _extendedInfo] call AET_loadout_handler_fnc_itemChangedEnd;
	}
] call CBA_fnc_addEventHandler;
diag_log (format ["SKY_ace_wardrobe_itemChangedEnd: %1", SKY_ace_wardrobe_itemChangedEnd]);
