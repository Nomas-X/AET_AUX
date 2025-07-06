#include "../script_component.hpp"


/*	here, you put in your CBA Settings so they are available in the editor!

https://github.com/CBATeam/CBA_A3/wiki/CBA-Settings-System

[
	
	QSET(displayMusic),					//    _setting     - Unique setting name. Matches resulting variable name <STRING>
	"CHECKBOX",								//    _settingType - Type of setting. Can be "CHECKBOX", "EDITBOX", "LIST", "SLIDER" or "COLOR" <STRING>
	["Display Music Title","This enables the message of the currently played music title by the CVO Music System"],
											//    _title       - Display name or display name + tooltip (optional, default: same as setting name) <STRING, ARRAY>
	["CVO", "CVO Music"],					//    _category    - Category for the settings menu + optional sub-category <STRING, ARRAY>
	false,									//    _valueInfo   - Extra properties of the setting depending of _settingType. See examples below <ANY>
	0,										//    _isGlobal    - 1: all clients share the same setting, 2: setting can't be overwritten (optional, default: 0) <NUMBER>
	{},										//    _script      - Script to execute when setting is changed. The New Value will be available as _this (optional) <CODE>
	false									//    _needRestart - Setting will be marked as needing mission restart after being changed. (optional, default false) <BOOL>
] call CBA_fnc_addSetting;
*/

[
	QSET(antiBounceSmokeGL_enabled),
	"CHECKBOX",
	["Enable Smoke GLs Anti-Bounce", "This only works if the description or tooltip of the magazine includes the word ""Smoke""."],
	["AET Common", "Common"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(compareAddonOptions_mode),
	"LIST",
	["Who can use the compare addon options function?", "This decides if the addon comparison command is executable and if so by who."],
	["AET Common", "Common"],
	[["ADMIN", "ANYONE"], ["Admin Only", "Anyone"], 0],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(dynamicGroups),
	"CHECKBOX",
	["Enable Dynamic Groups Menu", "This setting controls whether the dynamic groups menu is enabled or not."],
	["AET Common", "Common"],
	true,
	1,
	{},
	true
] call CBA_fnc_addSetting;
