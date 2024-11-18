#include "../script_component.hpp"

params ["_unit"];

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