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
	QSET(mode),
	"LIST",
	["Who Can Import A Plan", "An ""Import Plan"" action is added to the selected group to import plans from the https://maps.plan-ops.fr website."],
	["AET Common", "Plan Importer"],
	[["NO_ONE", "SQUAD_LEADERS"],["No One", "Squad Leaders"], 1],
	1,
	{},
	true
] call CBA_fnc_addSetting;

[
	QSET(channelSelector),
	"LIST",
	["Import Channel", "The channel the plan would be imported to. ""Selector"" allows the user to choose from all channel."],
	["AET Common", "Plan Importer"],
	[[-1, 0, 1, 2, 3, 4],["Selector", "Global", "Side", "Command", "Group", "Vehicle"], 0],
	1,
	{},
	false
] call CBA_fnc_addSetting;