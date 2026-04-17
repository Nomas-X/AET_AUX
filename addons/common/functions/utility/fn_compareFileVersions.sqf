#include "../../script_component.hpp"

/*
Authors:
	Redwan S. / Nomas

Description:
    This function is used to determine if there is a difference between a file from the mission and the master file.
	If differences are found it will create a pop-up.

Arguments:
	0. <String> The path of the master file.
	1. <String> The path of the mission side file.
	2. <String> The regex used to find the version / last edit line and compare. 

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
