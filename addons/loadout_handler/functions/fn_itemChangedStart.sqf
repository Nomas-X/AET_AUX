#include "../script_component.hpp"
/*
Function: AET_loadout_handler_fnc_itemChangedStart
Description:
	The codeblock that's used when ace_wardrobe_itemChangedStart EH is raised.

Parameters:
	_player - The player object.
	_oldItem - The old item.
	_newItem - The new item.
	_itemType - The item type.
	_extendedInfo - Extended information of the items?

Returns:
	Nothing.

Examples
	[_player, _oldItem, _newItem, _itemType, _extendedInfo] call AET_loadout_handler_fnc_itemChangedStart;

Author:
	Sky
*/

params ["_player", "_oldItem", "_newItem", "_itemType", "_extendedInfo"];

private _unitContainer = uniformContainer _player;
private _currentMaxLimit = maxLoad _unitContainer;

_unitContainer setVariable [QSET(uniformContainerMaxLoad), _currentMaxLimit];
ace_wardrobe_containerVarsToTransfer set [toLower QSET(uniformContainerMaxLoad), false];

ZRN_LOG_MSG(These are all the parameters I have in itemChangedStart);
ZRN_LOG_5(_player,_oldItem,_newItem,_itemType,_extendedInfo);
ZRN_LOG_MSG_2(Setting max limit in itemChangedStart,SET(uniformContainerMaxLoad),_currentMaxLimit);
