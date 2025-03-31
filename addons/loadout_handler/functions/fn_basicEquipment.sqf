#include "../script_component.hpp"

/*
Authors:
	Redwan S. / Nomas

Description:
    This function is used to add the basic equipment to the player if the CBA settings allow it. The items added are also based on the CBA settings. The function does not replace any existing equipment in the slots and will only act as a fail safe in case nothing is in a slot when it should be.

Arguments:
	0. <Object> The unit that will have its basic equipment checked and added if need be.

Return Value:
	<Nil>

Example:
	[] call AET_loadout_handler_fnc_basicEquipment;
*/

params [
	["_unit", objNull, [objNull]]
];

if (_unit getVariable [QGVAR(excludeBasicEquipment), false]) exitWith {GVAR(orderOfFunctions) = 1;};

private _tfarCompatibleRadios = parseSimpleArray SET(TFARCompatibleRadios);
private _programmerRequiredRadios = parseSimpleArray SET(radiosInNeedOfProgrammer);

if (SET(radiosForEveryone_enabled) && {(_tfarCompatibleRadios findIf {_x in (_unit getSlotItemName 611)}) == -1}) then {

	_unit linkItem SET(radiosForEveryone_className);
};

if (SET(radioProgrammersIfNeeded_enabled) && {(_programmerRequiredRadios findIf {_x in (_unit getSlotItemName 611)}) == -1}) then {

	_unit linkItem "TFAR_microdagr";
} else {

	if (SET(handWatchesForEveryone_enabled) && {_unit getSlotItemName 610 == ""}) then {

		_unit linkItem SET(handWatchesForEveryone_className);
	};
};

if (SET(binocularsForEveryone_enabled) && {_unit getSlotItemName 617 == ""}) then {

	_unit addWeaponGlobal SET(binocularsForEveryone_className);
};

if (SET(mapsForEveryone_enabled) && {_unit getSlotItemName 608 == ""}) then {

	_unit linkItem SET(mapsForEveryone_className);
};

if (SET(GPSsForEveryone_enabled) && {_unit getSlotItemName 612 == ""}) then {

	_unit linkItem SET(GPSsForEveryone_className);
};

if (SET(compassesForEveryone_enabled) && {_unit getSlotItemName 609 == ""}) then {

	_unit linkItem SET(compassesForEveryone_className);
};

GVAR(orderOfFunctions) = 1;