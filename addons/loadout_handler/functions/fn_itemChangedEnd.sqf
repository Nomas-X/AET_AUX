#include "../script_component.hpp"
/*
Function: AET_loadout_handler_fnc_itemChangedEnd
Description:
	The codeblock that's used when ace_wardrobe_itemChangedEnd EH is raised.

Parameters:
	_player - The player object.
	_oldItem - The old item.
	_newItem - The new item.
	_itemType - The item type.
	_extendedInfo - Extended information of the items?

Returns:
	Nothing.

Examples
	[_player, _oldItem, _newItem, _itemType, _extendedInfo] call AET_loadout_handler_fnc_itemChangedEnd;

Author:
	Sky
*/

params ["_player", "_oldItem", "_newItem", "_itemType", "_extendedInfo"];

private _unitContainer = uniformContainer _player;
private _currentMaxLimit = maxLoad _unitContainer;

private _neededMaxLimit = _unitContainer getVariable [QSET(uniformContainerMaxLoad), -1];

ZRN_LOG_MSG(These are all the parameters I have in itemChangedEnd);
ZRN_LOG_5(_player,_oldItem,_newItem,_itemType,_extendedInfo);
ZRN_LOG_MSG_2(Needed max limit in itemChangedEnd,SET(uniformContainerMaxLoad),_neededMaxLimit);

if (_neededMaxLimit isNotEqualTo _currentMaxLimit) then {
	[QGVAR(EH_setMaxLoad), [_unitContainer, _neededMaxLimit]] call CBA_fnc_serverEvent;
};
