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
[
	"ace_wardrobe_itemChangedBegin",
	{
		// params ["_player", "_oldItem", "_newItem", "_itemType", "_extendedInfo"];
		private _player = this#0;

		private _unitContainer = uniformContainer _player;
		private _currentMaxLimit = maxLoad _unitContainer;

		_player setVariable [QSET(uniformContainerMaxLoad), _currentMaxLimit];
	}
] call CBA_fnc_addEventHandler;

[
	"ace_wardrobe_itemChangedEnd",
	{
		// params ["_player", "_oldItem", "_newItem", "_itemType", "_extendedInfo"];
		private _player = this#0;
		private _unitContainer = uniformContainer _player;
		private _currentMaxLimit = maxLoad _unitContainer;

		private _neededMaxLimit = _player getVariable QSET(uniformContainerMaxLoad);
		if (_neededMaxLimit isNotEqualTo _currentMaxLimit) then {
			[QGVAR(EH_setMaxLoad), [_unitContainer, _neededMaxLimit]] call CBA_fnc_serverEvent;
		};
	}
] call CBA_fnc_addEventHandler;
