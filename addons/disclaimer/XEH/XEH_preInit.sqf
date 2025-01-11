#include "../script_component.hpp"


/*	here, you put in your CBA Settings so they are available in the editor!
[
	
	QSET(displayMusic),					//    _setting     - Unique setting name. Matches resulting variable name <STRING>
	"CHECKBOX",								//    _settingType - Type of setting. Can be "CHECKBOX", "EDITBOX", "LIST", "SLIDER" or "COLOR" <STRING>
	["Display Music Title","This enables the message of the currently played music title by the CVO Music System"],
											//    _title       - Display name or display name + tooltip (optional, default: same as setting name) <STRING, ARRAY>
	["CVO", "CVO Music"],					//    _category    - Category for the settings menu + optional sub-category <STRING, ARRAY>
	false,									//    _valueInfo   - Extra properties of the setting depending of _settingType. See examples below <ANY>
	0,										//    _isGlobal    - 1: all clients share the same setting, 2: setting can't be overwritten (optional, default: 0) <NUMBER>
	{},										//    _script      - Script to execute when setting is changed. (optional) <CODE>
	false									//    _needRestart - Setting will be marked as needing mission restart after being changed. (optional, default false) <BOOL>
] call CBA_fnc_addSetting;
*/

[
	QSET(enabled),
	"CHECKBOX",
	["Enable Disclaimer", "Controls if the disclaimer is shown."],
	["AET Disclaimer", "Disclaimer"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(enabled_logo),
	"CHECKBOX",
	["Enable Sponsor Logo", "Controls if the sponsor logo is shown during the disclaimer."],
	["AET Disclaimer", "Disclaimer"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(disable_in_editor),
	"CHECKBOX",
	["Disable In Editor Preview", "Controls if the disclaimer is shown in the editor preview."],
	["AET Disclaimer", "Disclaimer"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(disablesafety_mode),
	"LIST",
	["Disable Weapon Safety Based On", "Controls the mode the safety is handled with if any. For ""Custom"" check the github wiki."],
	["AET Disclaimer", "Weapon Safety"],
	[["NO_safety", "DISCLAIMER_END", "TIME", "DISTANCE", "CUSTOM"],["No Safety", "Disclaimer End", "Time", "Distance", "Custom"],1],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(disablesafety_time),
	"TIME",
	["Time Based Safety Removal", "Sets the needed time to pass before safety is removed automatically if mode is set to Time."],
	["AET Disclaimer", "Weapon Safety"],
	[0, 1200, 600],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(disablesafety_distance),
	"SLIDER",
	["Distance Based Safety Removal (In Meters)", "Sets the needed distance the player must be away from his spawn point before safety is removed automatically if mode is set to Distance."],
	["AET Disclaimer", "Weapon Safety"],
	[0, 500, 250, 0, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;