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

params [
	["_masterFilePath", "", [""]],
	["_missionFilePath", "", [""]], 
	["_versionRegex", "", [""]]
];

private _masterFileArray = (loadFile _masterFilePath) regexFind [_versionRegex];
private _missionFileArray = (loadFile _missionFilePath) regexFind [_versionRegex];
_masterFileArray = flatten _masterFileArray select {typeName _x == "STRING"};
_missionFileArray = flatten _missionFileArray select {typeName _x == "STRING"};

if (_missionFileArray isEqualTo [] || {_masterFileArray#0 != _missionFileArray#0}) then {
	[
		["You are using an incorrect version of the following file in your mission directory: " + _missionFilePath],
		"Warning:"
	] call CAU_UserInputMenus_fnc_guiMessage;
};
