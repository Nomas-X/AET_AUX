#include "../script_component.hpp"

/*
Author: Redwan S / Nomas

Description:
    This function is used to allow a player to import their plan from https://maps.plan-ops.fr to the game.

Arguments:
	0. <Object> Unit to execute the function on

	1. <Array> Includes the list of units <Object> that a unit must be in to get the ACE action

	2. <Number> (Optional) - The channel ID that the plan will be imported into, default is 0

Return Value: <nil>

Example:
	private _importPlanPlayerList = ["Z_1", "Z_2", "P_1"] call HR_fnc_ValidateObjects;
	[player, _importPlanPlayerList, 0] call AET_fnc_importPlan;
*/

params ["_channelSelection"];
// old params ["_unit", "_importPlanPlayerList", ["_channelSelection", 0]];

[
	[true,""],
	"Import PLANOPS plan",
	[{
		if _confirmed then {
			private _channelSelection = _this select 0;
			[_text, _channelSelection] spawn {
				params ["_text", "_channelSelection"];
				[format["Plan import attempt by: %1 | ID64: %2 | Import text: %3", name player, getPlayerUID player, _text]] remoteExec ["diag_log", 2, false];
				_plan = _text regexFind ["private _data = \[.*\]; \n \n_/"];

				if (count _plan >= 1) then {
					_plan = (((_plan select 0) select 0) select 0) regexFind ["\[.*\]/"];
					private _errorHandler = -1;
					player setVariable ["AET_importPlan_parseFlag", -1, false];
					private _errorHandler = addMissionEventHandler ["ScriptError", {
						params ["_errorText", "_sourceFile", "_lineNumber", "_errorPos", "_content", "_stackTraceOutput"];
						if (_errorText == "parseSimpleArray format error") then {
							player setVariable ["AET_importPlan_parseFlag", 1, false];
						};
					}];
					waitUntil {sleep 0.1; _errorHandler != -1};
					_plan = parseSimpleArray (((_plan select 0) select 0) select 0);
					[
						[
							3,"",
							false,
							[],
							{(player getVariable "AET_importPlan_parseFlag" != 1)},
							{}
						],
						"Importing plan...",
						{
							if _completed then {
								player setVariable ["AET_importPlan_parseFlag", 0, false];
							} else {
								systemChat "Plan import aborted";
							};
						},
						displayNull
					] call CAU_UserInputMenus_fnc_progressBar;
					waitUntil {sleep 0.1; (player getVariable "AET_importPlan_parseFlag") != -1};
					removeMissionEventHandler ["ScriptError", _errorHandler];
					if ((player getVariable "AET_importPlan_parseFlag" == 0)) then {
						_plan params ['_icons', '_poly', '_metis'];

						if (!isNil 'gtd_map_allMarkers') then {
							{
								deleteMarker _x;
							} forEach gtd_map_allMarkers;
						};

						if (!isNil 'gtd_map_allMetisMarkers') then {
							{
								[_x] call mts_markers_fnc_deleteMarker
							} forEach gtd_map_allMetisMarkers;
						};

						gtd_map_allMarkers = [];
						gtd_map_allMetisMarkers = [];

						{
							_x params ['_id', '_points', '_color'];
							_points params ['_x', '_y'];
							private _marker = createMarkerLocal [ format ['_USER_DEFINED #%1/planops%2/%3', clientOwner, _id, _channelSelection], [_x, _y], 0];
							_marker setMarkerShapeLocal 'polyline';
							_marker setMarkerPolylineLocal _points;
							_marker setMarkerColor _color; 
							gtd_map_allMarkers pushBack _marker;
						} forEach _poly;

						{
							_x params ['_id', '_x', '_y', '_icon', '_color', '_text', '_rotate',['_scale',1]];
							private _marker = createMarkerLocal [ format ['_USER_DEFINED #%1/planops%2/%3', clientOwner, _id, _channelSelection], [_x, _y], 0];
							_marker setMarkerShapeLocal 'ICON';
							_marker setMarkerDirLocal _rotate;
							_marker setMarkerColorLocal _color; 
							_marker setMarkerTextLocal _text;
							_marker setMarkerTypeLocal _icon;
							if (_scale == 0) then {
								_marker setMarkerSize [1,1];
							} else {
								_marker setMarkerSize [_scale,_scale];
							};
							gtd_map_allMarkers pushBack _marker;
						} forEach _icons;

						{
							_x params ['_id', '_x', '_y', '_sideid', '_dashed', '_icon', '_mod1', '_mod2', '_size', '_designation',['_scale',1]];
							private _marker = [[_x,_y], _channelSelection, true, [[_sideid, _dashed], [_icon, _mod1, _mod2], [_size, false, false], [], _designation], _scale * 1.3] call mts_markers_fnc_createMarker;
							gtd_map_allMetisMarkers pushBack _marker;
						} forEach _metis;
						
						publicVariable 'gtd_map_allMarkers';
						publicVariable 'gtd_map_allMetisMarkers';
						systemChat "Plan was imported successfully!";
					} else {
						systemChat "Invalid input, a parsing error has occursed!";
						[format["Parsing error triggered by: %1 | ID64: %2 | Using: %3", name player, getPlayerUID player, _plan]] remoteExec ["diag_log", 2, false];
					};
				} else {
					systemChat "Invalid input, data pattern does not match!";
				};
			};
		} else {
			systemChat "Plan import cancelled";
		};
	},[_channelSelection]],
	"Import",
	"Cancel"
] call CAU_UserInputMenus_fnc_text;