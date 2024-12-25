#include "../script_component.hpp"
/*
Authors:
	Redwan S. / Nomas

Description:
    This function is used to add the "Import Plan" and "Delete Plan" actions under the parent action "Plan Actions".

Arguments:
	N/A

Return Value:
	<Nil>

Example:
	[] call AET_plan_importer_fnc_addActions;
*/

params [
	["_logic", objNull, [objNull]],		// Argument 0 is module logic
	["_units", [], [[]]],				// Argument 1 is a list of affected units (affected by value selected in the 'class Units' argument))
	["_activated", true, [true]]		// True when the module was activated, false when it is deactivated (i.e., synced triggers are no longer active)
];

// Module specific behavior. Function can extract arguments from logic and use them.
if !(_activated) exitWith {false};


// Attribute values are saved in module's object space under their class names

private _code = {
	private _vehicle = missionNamespace getVariable [(_logic getVariable ["Vehicle", ""]), "404"];
	if (_vehicle isEqualTo "404") exitWith {systemChat "FUCKING IDIOT DIDNT DEFINE THE VHEICLE PROPPER"};
	
	
	private _backupLZ = _logic getVariable ["BackupLZ", -1];
	private _gvarReturn = missionNamespace getVariable [_backupLZ, "404"];
	
	_backupLZ = switch (true) do {
		case ( _gvarReturn isNotEqualTo "404" ) : { getPosASL _gvarReturn };
		case ( [0,0,0] isNotEqualTo getMarkerPos _backupLZ ) : { ATLToASL getMarkerPos _backupLZ };
		case ( call compile _gvarReturn isEqualType [] ) : { call compile _backupLZ };
		default { false };
	};

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

	if (isServer) then {
		if ( _logic getVariable ["AllowDamage", false] ) then { _vehicle allowDamage false };
		if ( _logic getVariable ["LockAISeats", false] ) then { [_vehicle] call EFUNC(common,lockAISeats) };
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