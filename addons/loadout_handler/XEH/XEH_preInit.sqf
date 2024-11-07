#include "../script_component.hpp"


/*	here, you put in your CBA Settings so they are available in the editor!
[
	
	QSET(displayMusic),					//    _setting     - Unique setting name. Matches resulting variable name <STRING>
	"CHECKBOX",								//    _settingType - Type of setting. Can be "CHECKBOX", "EDITBOX", "LIST", "SLIDER" or "COLOR" <STRING>
	["Display Music Title","This enables the message of the currently played music title by the CVO Music System"],
											//    _title       - Display name or display name + tooltip (optional, default: same as setting name) <STRING, ARRAY>
	["AET", "AET Music"],					//    _category    - Category for the settings menu + optional sub-category <STRING, ARRAY>
	false,									//    _valueInfo   - Extra properties of the setting depending of _settingType. See examples below <ANY>
	0,										//    _isGlobal    - 1: all clients share the same setting, 2: setting can't be overwritten (optional, default: 0) <NUMBER>
	{},										//    _script      - Script to execute when setting is changed. (optional) <CODE>
	false									//    _needRestart - Setting will be marked as needing mission restart after being changed. (optional, default false) <BOOL>
] call CBA_fnc_addSetting;
*/

[
	QSET(TFARCompatibleRadios),
	"EDITBOX",
	["TFAR Compatible Radios List", "The provided array will be used to verify whether a radio is TFAR compatible or not."],
	["AET Common", "Basic Equipment"],
	"TFAR_anprc148jem",
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(radiosForEveryone_enabled),
	"CHECKBOX",
	["Radios For Everyone", "This would not replace any existing radios if the loadouts already includes them in the editor."],
	["AET Common", "Basic Equipment"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(radiosForEveryone_className),
	"EDITBOX",
	["Radio Class Name", "The provided class name is the item that will be given to players who's radio slot is empty or includes a radio that is not in the list of TFAR compatible radios."],
	["AET Common", "Basic Equipment"],
	"TFAR_anprc148jem",
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(radioProgrammersIfNeeded_enabled),
	"CHECKBOX",
	["Radio Programmers If Needed", "This would not replace any existing radios if the loadouts already includes them in the editor."],
	["AET Common", "Basic Equipment"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(binocularsForEveryone_enabled),
	"CHECKBOX",
	["Binoculars For Everyone", "This would not replace any existing binoculars if the loadouts already includes them in the editor."],
	["AET Common", "Basic Equipment"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(binocularsForEveryone_className),
	"EDITBOX",
	["Binocular Class Name", "The provided class name is the item that will be given to players who's binoculars slot is empty."],
	["AET Common", "Basic Equipment"],
	"Binocular",
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(mapsForEveryone_enabled),
	"CHECKBOX",
	["Maps For Everyone", "This would not replace any existing maps if the loadouts already includes them in the editor."],
	["AET Common", "Basic Equipment"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(mapsForEveryone_className),
	"EDITBOX",
	["Map Class Name", "The provided class name is the item that will be given to players who's map slot is empty."],
	["AET Common", "Basic Equipment"],
	"ItemMap",
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(GPSsForEveryone_enabled),
	"CHECKBOX",
	["GPSs For Everyone", "This would not replace any existing GPSs if the loadouts already includes them in the editor."],
	["AET Common", "Basic Equipment"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(GPSsForEveryone_className),
	"EDITBOX",
	["GPS Class Name", "The provided class name is the item that will be given to players who's GPS slot is empty."],
	["AET Common", "Basic Equipment"],
	"ItemGPS",
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(compassesForEveryone_enabled),
	"CHECKBOX",
	["Compasses For Everyone", "This would not replace any existing compasses if the loadouts already includes them in the editor."],
	["AET Common", "Basic Equipment"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(compassesForEveryone_className),
	"EDITBOX",
	["Compass Class Name", "The provided class name is the item that will be given to players who's compass slot is empty."],
	["AET Common", "Basic Equipment"],
	"ItemCompass",
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(handWatchesForEveryone_enabled),
	"CHECKBOX",
	["Hand Watches For Everyone", "This would not replace any existing hand watche slot items if the loadouts already includes them in the editor."],
	["AET Common", "Basic Equipment"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(handWatchesForEveryone_className),
	"EDITBOX",
	["Hand Watch Class Name", "The provided class name is the item that will be given to players who's hand watch slot is empty."],
	["AET Common", "Basic Equipment"],
	"ItemWatch",
	1,
	{},
	false
] call CBA_fnc_addSetting;