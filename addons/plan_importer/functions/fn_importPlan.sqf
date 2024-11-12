#include "../script_component.hpp"
/*
Author: Redwan S / Nomas

Description:
    This function calls a text box that is used to allow a player to import their plan from https://maps.plan-ops.fr to the game. It would parse through the provided text to ensure it matches the import pattern and reject any abnormal patterns to avoid code injection.

Arguments:
	0. <Number> The channel ID that the plan will be imported into

Return Value:
	<Nil>

Example:
	[0] call AET_plan_importer_fnc_importPlan;
*/

params ["_channelSelection"];

[
	[true,""],
	"Import PLANOPS plan",
	[{
		if _confirmed then {

			private _channelSelection = _this select 0;
			[_text, _channelSelection] spawn {
				params ["_text", "_channelSelection"];
				[format["Plan import attempt by: %1 | ID64: %2 | Import Channel: %3 | Import text: %4", name player, getPlayerUID player, _channelSelection, _text]] remoteExec ["diag_log", 2, false];
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

						[_channelSelection, _plan] call FUNC(createMarkers);
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