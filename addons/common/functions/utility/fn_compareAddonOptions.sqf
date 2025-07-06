#include "../../script_component.hpp"

/*
Authors:
	Redwan S. / Nomas
	OverlordZorn

Description:
    This function is used to determine if there is a difference between the cba_settings.sqf file from mission side and the master settings. The function will create a diary entry with details about the difference if any are present.

Arguments:
	0. <Object> The player that will have the diary created for.

Return Value:
	<Nil>

Example:
	[] call AET_common_fnc_compareAddonOptions;
*/

params ["_player"];

if !(SET(compareAddonOptions_mode) == "ANYONE" || { IS_ADMIN }) exitWith {systemChat "Must be admin to use the addon option comparison function!";};

private _arrayMaster = ((loadFile PATH_TO_ADDON_2(data,master_cba_settings.sqf)) regexReplace ["\/\/ END OF AET FILE[\s\S]*", "END OF AET FILE"]) regexFind ["^[^\r\n]*"];
private _arrayMission = ((loadFile "cba_settings.sqf") regexReplace ["\/\/ END OF AET FILE[\s\S]*", "END OF AET FILE"]) regexFind ["^[^\r\n]*"];

_arrayMaster = flatten _arrayMaster select {typeName _x == "STRING"};
_arrayMission = flatten _arrayMission select {typeName _x == "STRING"};

if (count _arrayMaster isNotEqualTo count _arrayMission ) exitWith {
	_player setDiaryRecordText [["AntistasiEventTeamActions", GVAR(settingsDiary)], ["CBA Settings Comparison Result", "Files line count does not match!<br/>Major diffirence detected, alert Event Team Lead(s)!"]];
};

private _diaryString = "";
private _differenceCounter = 0;

for "_line" from 0 to (count _arrayMission) do {
	private _lineMaster = _arrayMaster#_line;
	private _lineMission = _arrayMission#_line;

	if (_lineMaster isNotEqualTo _lineMission) then {

		_differenceCounter = _differenceCounter + 1;
		_diaryString = _diaryString + format ["Difference #%1 at line %2<br/>    Master:<br/>    %3<br/>    Mission:<br/>    %4<br/><br/>", _differenceCounter, _line, _lineMaster, _lineMission];
	};
};

if (_differenceCounter == 0) then {
	_player setDiaryRecordText [["AntistasiEventTeamActions", GVAR(settingsDiary)], ["CBA Settings Comparison Result", "No differences in settings found!"]];
} else {
	_player setDiaryRecordText [["AntistasiEventTeamActions", GVAR(settingsDiary)], ["CBA Settings Comparison Result", _diaryString]];
};
