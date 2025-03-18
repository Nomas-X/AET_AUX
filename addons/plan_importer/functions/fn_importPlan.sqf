#include "../script_component.hpp"
/*
Author: Redwan S. / Nomas

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

			[format["Plan import attempt by: %1 | ID64: %2 | Import Channel: %3 | Import text: %4", name player, getPlayerUID player, _channelSelection, _text]] remoteExec ["diag_log", 2, false];
			_plan = _text regexFind ["private _data = \[.*\]; \n \n_/"];

			if (count _plan >= 1) then {

				_plan = (((_plan select 0) select 0) select 0) regexFind ["\[.*\]/"];

				private _errorHandler = -1;
				GVAR(parseFlag) = -1;

				private _errorHandler = addMissionEventHandler ["ScriptError", {
					params ["_errorText", "_sourceFile", "_lineNumber", "_errorPos", "_content", "_stackTraceOutput"];

					if (_errorText == "parseSimpleArray format error" && {_sourceFile == "z\AET\addons\plan_importer\functions\fn_importPlan.sqf"}) then {
						GVAR(parseFlag) = 1;
					};
				}];

				[
					{_this#0 != -1},
					{
						params ["_errorHandler", "_plan", "_channelSelection"];

						[_errorHandler, _plan, _channelSelection] spawn {
							params ["_errorHandler", "_plan", "_channelSelection"];
							
							systemChat "Parsing...";
							_plan = parseSimpleArray (((_plan select 0) select 0) select 0);

							uiSleep 3;
							systemChat "Done parsing...";

							if (GVAR(parseFlag) == 1) then {

								systemChat "Invalid input, a parsing error has occursed!";
								[QGVAR(EH_parsingError), [player, _plan]] call CBA_fnc_globalEvent;
								removeMissionEventHandler ["ScriptError", _errorHandler];
							} else {
								removeMissionEventHandler ["ScriptError", _errorHandler];
								[_channelSelection, _plan] call FUNC(createMarkers);
							};
						};

					},
					[_errorHandler, _plan, _channelSelection]
				] call CBA_fnc_waitUntilAndExecute;
			} else {
				systemChat "Invalid input, data pattern does not match!";
			};
		} else {
			systemChat "Plan import cancelled";
		};
	},[_channelSelection]],
	"Import",
	"Cancel"
] call CAU_UserInputMenus_fnc_text;