#include "../../script_component.hpp"

/*
Authors:
	Redwan S. / Nomas

Description:
    This function is used to determine if there is a difference between the cba_settings.sqf file from mission side and the master settings as well as the versions of AET_Settings.sqf files.
	If differences are found it will create a pop-up.

Arguments:
	0. <Object> The player that will have the diary created for.

Return Value:
	<Nil>

Example:
	[] call AET_common_fnc_compareFileVersions;
*/

params ["_player"];

private _cbaSettings_arrayMaster = (loadFile PATH_TO_ADDON_2(data,master_cba_settings.sqf)) regexFind ["\/\/ LAST UPDATED \d\d\d\d-\d\d-\d\d"];
private _cbaSettings_arrayMission = (loadFile "cba_settings.sqf") regexFind ["\/\/ LAST UPDATED \d\d\d\d-\d\d-\d\d"];
_cbaSettings_arrayMaster = flatten _cbaSettings_arrayMaster select {typeName _x == "STRING"};
_cbaSettings_arrayMission = flatten _cbaSettings_arrayMission select {typeName _x == "STRING"};

private _aetSettings_arrayMaster = (loadFile PATH_TO_ADDON_2(data,master_AET_settings.sqf)) regexFind ["\/\/ LAST UPDATED \d\d\d\d-\d\d-\d\d"];
private _aetSettings_arrayMission = (loadFile "AET_Scripts\AET_settings.sqf") regexFind ["\/\/ LAST UPDATED \d\d\d\d-\d\d-\d\d"];
_aetSettings_arrayMaster = flatten _aetSettings_arrayMaster select {typeName _x == "STRING"};
_aetSettings_arrayMission = flatten _aetSettings_arrayMission select {typeName _x == "STRING"};

private _aetDescriptionExt_arrayMaster = (loadFile PATH_TO_ADDON_2(data,master_description.txt)) regexFind ["\/\/ LAST UPDATED \d\d\d\d-\d\d-\d\d"];
private _aetDescriptionExt_arrayMission = (loadFile "description.ext") regexFind ["\/\/ LAST UPDATED \d\d\d\d-\d\d-\d\d"];
_aetDescriptionExt_arrayMaster = flatten _aetDescriptionExt_arrayMaster select {typeName _x == "STRING"};
_aetDescriptionExt_arrayMission = flatten _aetDescriptionExt_arrayMission select {typeName _x == "STRING"};

if (_cbaSettings_arrayMission isEqualTo [] || {_cbaSettings_arrayMaster#0 != _cbaSettings_arrayMission#0}) then {
	[
		["You are using an incorrect version of the cba_settings.sqf file in your mission directory!"],
		"Warning:"
	] call CAU_UserInputMenus_fnc_guiMessage;
};

if (_aetSettings_arrayMission isEqualTo [] || {_aetSettings_arrayMaster#0 != _aetSettings_arrayMission#0}) then {
	[
		["You are using an incorrect version of the AET_settings.sqf file in your mission directory!"],
		"Warning:"
	] call CAU_UserInputMenus_fnc_guiMessage;
};

if (_aetDescriptionExt_arrayMission isEqualTo [] || {_aetDescriptionExt_arrayMaster#0 != _aetDescriptionExt_arrayMission#0}) then {
	[
		["You are using an incorrect version of the description.ext file in your mission directory!"],
		"Warning:"
	] call CAU_UserInputMenus_fnc_guiMessage;
};
