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
	QSET(disable_for_admin),
	"CHECKBOX",
	["Disable For Admin", "Controls if the disclaimer is shown for the admin."],
	["AET Disclaimer", "Disclaimer"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(text),
	"EDITBOX",
	["Disclaimer Text", "This is the string used with the cutText command in the disclaimer."],
	["AET Disclaimer", "Disclaimer"],
	"<t size='2'>Disclaimer: This is a work of fiction. Names, characters, businesses, places, events and incidents are either the products of the author's imagination or used in a fictitious manner. Any resemblance to actual persons, living or dead, or actual events is purely coincidental.</t>",
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(logoPath),
	"EDITBOX",
	["Disclaimer Sponsor Logo", "This is the string used with the cutText command in the disclaimer to show the sponsor logo."],
	["AET Disclaimer", "Disclaimer"],
	"<img size='8' shadow='0' image='z\aet\addons\disclaimer\data\opengroup_sponsor.paa'/>",
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(customIntro_path),
	"EDITBOX",
	["Custom Intro File Path", "This is the file path used to call your script within the disclaimer. Safety, removal of black screen and more is all already handled, this is done to allow you to add your own text, images, or more. The file will be executed in a scheduled environment."],
	["AET Disclaimer", "Disclaimer"],
	"AET_Scripts\customIntro.sqf",
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(disableSafetymode),
	"LIST",
	["Disable Weapon Safety Based On", "Controls the mode the safety is handled with if any. For ""Custom"" check the github wiki."],
	["AET Disclaimer", "Weapon Safety"],
	[["NO_SAFETY", "DISCLAIMER_END", "TIME", "DISTANCE", "CUSTOM"],["No Safety", "Disclaimer End", "Time", "Distance", "Custom"],1],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(disableSafetytime),
	"TIME",
	["Time Based Safety Removal (Mission Time)", "Sets the needed time to pass since mission start before safety is removed automatically if mode is set to Time."],
	["AET Disclaimer", "Weapon Safety"],
	[0, 1200, 600],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(disableSafetydistance),
	"SLIDER",
	["Distance Based Safety Removal (In Meters)", "Sets the needed distance the player must be away from his spawn point before safety is removed automatically if mode is set to Distance."],
	["AET Disclaimer", "Weapon Safety"],
	[0, 500, 250, 0, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;