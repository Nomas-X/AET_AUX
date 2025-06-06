#include "../script_component.hpp"
/*
Authors:
	Redwan S. / Nomas

Description:
    This function is used on module initialization to activate the module. 

Arguments:
	1. <Object> The module logic which is used to get synchronized units from and other information such as move options.

	2. <Array> The list of units passed by the module if the "Objects in synchronized triggers" is not selected. Otherwise it will return an empty array and unit fetching will be done inside this function.

	3. <Boolean> True when the module was activated, false when it is deactivated (i.e., synced triggers are no longer active)

Return Value:
	<Nil>

Example:
	[] call AET_start_in_vehicle_fnc_init;
*/

params [
	["_logic", objNull, [objNull]],		// Argument 0 is module logic
	["_units", [], [[]]],				// Argument 1 is a list of affected units (affected by value selected in the 'class Units' argument))
	["_activated", true, [true]]		// True when the module was activated, false when it is deactivated (i.e., synced triggers are no longer active)
];

// Module specific behavior. Function can extract arguments from logic and use them.
if !(_activated) exitWith {[format ["Module Activated: %1 | Units: %2 | Logic: %3 | For: %4", _activated, _units, _logic, player]] remoteExec ["diag_log"]; false};

// Attribute values are saved in module's object space under their class names
private _code = {
	[format ["Code is called for: %1", player]] remoteExec ["diag_log"];
	private _vehicle = missionNamespace getVariable [(_logic getVariable ["Vehicle", ""]), "404"];
	if (_vehicle isEqualTo "404") exitWith {["[Start In Vehicle] Vehicle not defined!"] remoteExec ["systemChat"]};
	
	private _backupLZ = _logic getVariable ["BackupLZ", -1];
	private _gvarReturn = missionNamespace getVariable [_backupLZ, "404"];
	
	_backupLZ = switch (true) do {
		case ( _gvarReturn isNotEqualTo "404" ) : { getPosASL _gvarReturn };
		case ( [0,0,0] isNotEqualTo getMarkerPos _backupLZ ) : { ATLToASL getMarkerPos _backupLZ };
		case ( call compile _gvarReturn isEqualType [] ) : { call compile _backupLZ };
		default { false };
	};

	if (isServer) then {
		private _condition = _logic getVariable ["TerminateCondition", false];
		if ( _logic getVariable ["AllowDamage", false] ) then { [_vehicle, false] remoteExec ["allowDamage", 0] };
		if ( _logic getVariable ["LockAISeats", false] ) then { [_vehicle, true] call EFUNC(common,lockAISeats) };
		if (_condition isNotEqualTo "") then {
			if (_condition select [0, 1] isEqualTo "{") then {
				_condition = call compile _condition;
			} else {
				_condition = call compile ("{" + _condition + "}");
			};
			[
				_condition,
				{deleteVehicle (_this # 0);[format ["Module Deleted"]] remoteExec ["diag_log"];},
				[_logic]
			] call CBA_fnc_waitUntilAndExecute;
		};
	} else {
		[
			QGVAR(EH_request),
			[
				player,
				[
					_vehicle,
					_backupLZ,
					_logic getVariable ["Cargo", -1],
					_logic getVariable ["Commander", -1],
					_logic getVariable ["Gunner", -1],
					_logic getVariable ["Driver", -1]
				]
			]
		] call CBA_fnc_serverEvent;
	};
};

if (player in _units) then {
	call _code;
} else {
	// This is being done as a work around since the "Objects in synchronized triggers" is not working for whatever reason
	if (_logic getVariable ["Units", -1] == "2") then {

		private _synchronizedTriggers = synchronizedObjects _logic;
		{
			if (_x isKindOf "EmptyDetector" && {player inArea _x}) then {
				
				call _code;
				break;
			};
		} forEach _synchronizedTriggers;
	};
};

// Module function is executed by spawn command, so returned value is not necessary, but it is good practice.
true;