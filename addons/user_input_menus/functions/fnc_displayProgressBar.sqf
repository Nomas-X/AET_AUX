/*──────────────────────────────────────────────────────┐
│   Author: Connor                                      │
│   Steam:  https://steamcommunity.com/id/_connor       │
│   Github: https://github.com/ConnorAU                 │
│                                                       │
│   Please do not modify or remove this comment block   │
└──────────────────────────────────────────────────────*/

#define DISPLAY_NAME CAU_UserInputMenus_displayProgressBar

#include "_macros.inc"
#include "_defines.inc"
#include "script_component.hpp"

#define VAR(suffix) QUOTE(JOIN(DISPLAY_NAME,JOIN(_,suffix)))
#define UIM_SVAR(n,v) _parentDisplay setVariable [VAR(n),v]
#define UIM_GVAR(n,v) (_parentDisplay getVariable [VAR(n),v])

params [
	["_parameters",[],[[]]],
	["_title","Progress",[""]],
	["_code",{},[{},[]]],
	["_parentDisplay",displayNull,[displayNull]]
];
_parameters params [
	["_duration",0,[0]],
	["_image","",[""]],
	["_overlay",true,[true]],
	["_arguments",[]],
	["_condition",{},[{}]],
	["_onProgress",{},[{}]]
];
_code params [["_code",{},[{}]],["_args",[],[[]]]];

if (_duration <= 0) exitWith {["Duration too short: %1",_duration] call BIS_fnc_error};

// Create display
disableSerialization;
if (isNull _parentDisplay) then {_parentDisplay = findDisplay 46};
if !_overlay then {
	_parentDisplay = _parentDisplay createDisplay "RscDisplayEmpty";
	_parentDisplay ctrlCreate ["ctrlStaticBackgroundDisableTiles",-1];
};
private _display = _parentDisplay ctrlCreate ["CAU_UserInputMenus_displayProgressBar",-1];
if (isNull _display) exitWith {["Unable to create display on parent: %1",_parentDisplay] call BIS_fnc_error};

// Prepare user interface
private _ctrlImage = _display getVariable ["ctrlImage",controlNull];
private _ctrlText = _display getVariable ["ctrlText",controlNull];
private _ctrlButton = _display getVariable ["ctrlButton",controlNull];

_ctrlText ctrlSetText format["%1 (0%2)",_title,"%"];
if (_image != "") then {
	_ctrlImage ctrlSetText _image;

	private _ctrlImagePos = ctrlPosition _ctrlImage;
	private _ctrlTextPos = ctrlPosition _ctrlText;

	_ctrlText ctrlSetPositionX (_ctrlTextPos#0 + _ctrlImagePos#2);
	_ctrlText ctrlSetPositionW (_ctrlTextPos#2 - _ctrlImagePos#2);
	_ctrlText ctrlCommit 0;
};

if _overlay then {
	_ctrlButton ctrlShow false;
} else {
	_ctrlText ctrlSetPositionW (ctrlPosition _ctrlText#2 - ctrlPosition _ctrlButton#2);
	_ctrlText ctrlCommit 0;

	_ctrlButton ctrlAddEventHandler ["ButtonClick",{
		private _parentDisplay = ctrlParent(_this#0);
		1 call UIM_GVAR(exit,{});
	}];
};

_parentDisplay displayAddEventHandler ["Unload",{
	params ["_parentDisplay","_code"];
	if (_code == 2) then {1 call UIM_GVAR(exit,{})};
}];

// Define exit function
private _exit = {
	USE_UIM_DISPLAY(THIS_DISPLAY);
	private _parentDisplay = ctrlParent _display;

	private _args = UIM_GVAR(args,[]);
	private _code = UIM_GVAR(code,{});

	removeMissionEventHandler ["EachFrame",UIM_GVAR(eachFrameID,-1)];
	if UIM_GVAR(overlay,true) then {
		ctrlDelete _display;
		// wipe variables from parent display because we aren't closing it
		UIM_SVAR(args,nil);
		UIM_SVAR(code,nil);
		UIM_SVAR(arguments,nil);
		UIM_SVAR(condition,nil);
		UIM_SVAR(onProgress,nil);
		UIM_SVAR(exit,nil);
		UIM_SVAR(title,nil);
		UIM_SVAR(duration,nil);
		UIM_SVAR(startTick,nil);
		UIM_SVAR(overlay,nil);
		UIM_SVAR(eachFrameID,nil);
	} else {
		_parentDisplay closeDisplay 0;
	};

	[_this == 0,_args,_code] call {
		// Wiping inherited local variables from scope
		private ["_parentDisplay","_display","_canProgress","_progress","_ctrlBackground","_ctrlBar","_ctrlText","_code","_args"];
		params ["_completed"];
		(_this#1) call (_this#2);
	};
};

// Save data to parent display
UIM_SVAR(args,_args);
UIM_SVAR(code,_code);
UIM_SVAR(arguments,_arguments);
UIM_SVAR(condition,_condition);
UIM_SVAR(onProgress,_onProgress);
UIM_SVAR(exit,_exit);
UIM_SVAR(title,_title);
UIM_SVAR(duration,_duration);
UIM_SVAR(startTick,diag_tickTime);
UIM_SVAR(overlay,_overlay);

// Add update event
private _eachFrameID = addMissionEventHandler ["EachFrame",{
	disableSerialization;
	USE_UIM_DISPLAY(THIS_DISPLAY);
	private _parentDisplay = ctrlParent _display;

	// canProgress if condition returns nil or true
	private _canProgress = [UIM_GVAR(arguments,[]),UIM_GVAR(condition,{})] call {
		// Wiping inherited local variables from scope
		private ["_display","_parentDisplay"];
		(_this#0) call (_this#1);
	};
	if (!isNil "_canProgress" && {!(_canProgress isEqualType true) || {!_canProgress}}) exitWith {1 call UIM_GVAR(exit,{})};

	UIM_GVAR(onProgress,{}) call {
		// Wiping inherited local variables from scope
		private ["_display","_parentDisplay","_canProgress"];
		[] call _this;
	};

	// Calculate progress value.
	// _duration default is diag_tickTime to avoid zero divisor errors, and assume progress is complete if the variables are nil
	private _progress = ((diag_tickTime - UIM_GVAR(startTick,0))/UIM_GVAR(duration,diag_tickTime)) min 1;

	// Update controls
	private _ctrlBackground = _display getVariable ["ctrlBackground",controlNull];
	private _ctrlBar = _display getVariable ["ctrlBar",controlNull];
	private _ctrlText = _display getVariable ["ctrlText",controlNull];

	_ctrlBar ctrlSetPositionW ((ctrlPosition _ctrlBackground # 2)*_progress);
	_ctrlBar ctrlCommit 0;
	_ctrlText ctrlSetText format["%1 (%2%3)",UIM_GVAR(title,"Progress"),ceil(_progress*100),"%"];

	// Exit if complete
	if (_progress == 1) then {0 call UIM_GVAR(exit,{})};
}];
UIM_SVAR(eachFrameID,_eachFrameID);
