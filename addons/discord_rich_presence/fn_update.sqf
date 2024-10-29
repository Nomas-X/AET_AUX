/* ----------------------------------------------------------------------------
Author:
	ConnorAU - https://github.com/ConnorAU

Function:
	DiscordRichPresence_fnc_update

Description:
	Update specific rich presence elements with new values

Parameters:
	0 : ARRAY of ARRAYS - New values to apply to individual elements
		0 : STRING - Element to update
		1 : STRING or NUMBER or ARRAY - New value to apply to the specified element

Return:
	Array - Extension return: [result, returnCode, errorCode]
---------------------------------------------------------------------------- */

#define PERMITTED_TASKS [\
	"UpdateDetails",\
	"UpdateState",\
	"UpdateLargeImageKey",\
	"UpdateLargeImageText",\
	"UpdateSmallImageKey",\
	"UpdateSmallImageText",\
	"UpdateStartTimestamp",\
	"UpdateEndTimestamp",\
	"UpdatePartySize",\
	"UpdatePartyMax",\
	"UpdateButtons"\
]

#define STRING_TASKS [\
	"UpdateDetails",\
	"UpdateState",\
	"UpdateLargeImageKey",\
	"UpdateLargeImageText",\
	"UpdateSmallImageKey",\
	"UpdateSmallImageText"\
]

if !(uiNamespace getVariable ["DiscordRichPresence_LoadSuccess",false]) exitWith {};
if (isNil "_this" || {!(_this isEqualType [])}) exitWith {};

// Update specific properties
{
	_x params [["_task","",[""]],["_value","",["",0,[]]]];
	if (_task in PERMITTED_TASKS) then {
		if (_task in STRING_TASKS) then {_value = text _value};
		if (_task == "UpdateButtons") then {_value = text(_value joinString toString[1])};
		"DiscordRichPresence" callExtension [_task,[_value]];
	};
} forEach _this;

// Send update to discord
"DiscordRichPresence" callExtension ["UpdatePresence",[]];
