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
	QSET(enabled),
	"CHECKBOX",
	["Enable PLANOPS Plan Importer", "Allows the use of the ""Import Plan"" and ""Delete Plan"" actions in the diary to import and delete plans from the https://maps.plan-ops.fr website."],
	["AET Plan Importer"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(importChannel),
	"LIST",
	["Import Channel", "The channel the plan would be imported to. ""Selector"" allows the user to choose from all listed channels."],
	["AET Plan Importer"],
	[[-1, 0, 1, 2],["Channel Selector", "Global", "Side", "Command"], 0],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(groupLeaders_enabled),
	"CHECKBOX",
	["Enable For Group Leaders", "Allows group leaders to use the ""Import Plan"" and ""Delete Plan"" actions to import and delete plans from the https://maps.plan-ops.fr website."],
	["AET Plan Importer", "Conditions"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(rankBased_mode),
	"LIST",
	["Enable For The Following Rank And Above", "Allows the selected rank and other ranks higher than it to use the ""Import Plan"" and ""Delete Plan"" actions to import and delete plans from the https://maps.plan-ops.fr website."],
	["AET Plan Importer", "Conditions"],
	[[10, 0, 1, 2, 3, 4, 5, 6],["Disabled", "Private", "Corporal", "Sergeant", "Lieutenant", "Captain", "Major", "Colonel"], 0],
	1,
	{},
	false
] call CBA_fnc_addSetting;
