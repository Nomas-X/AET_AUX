#include "../script_component.hpp"


/*
* Author: Zorn
* This function decides whether the User will be able to import a plan or not. It does Cache the conclusion for x Minutes before it will re-evaluate the results.
* The following conditions will cause the 
*
* Arguments:
*
* Return Value:
* None
*
* Example:
* ['something', player] call prefix_component_fnc_functionname
*
* Public: No
*/

// params [ ["_varName",        "defaultValue",         ["acceptedDataTypes"]       ]];

#define CACHETIME	(1*60)



// Check for a flag on the player
// true -> Always access, false -> always denied, "404" not defined, means no further checks will be made
private _alwaysAllowed = player getVariable [QGVAR(_alwaysAllowed), "404"];
if (_alwaysAllowed isNotEqualTo "404") exitWith { _alwaysAllowed };

// Check for Cached result
// Cache Format: [bool, timestamp];
private _cached = missionNamespace getVariable [QGVAR(cached_condition), "404"];

private _return = false;

if (_cached isEqualTo "404") then {
	// run the normal checks
	_return = ...;



	//return the result and store it in the cache
	_cached = [_return, (CBA_MissionTime + CACHETIME)];
	missionNamespace setVariable [QGVAR(cached_condition), _cached];

	// nil the cache after X
	// clean cache
	_condition = {
		_cache = missionNamespace getVariable [QGVAR(cached_condition), "404"];
		if (_cache isEqualTo "404") exitWith {false};
		CBA_MissionTime > (_cache#1)
	};

	[_condition, { missionNamespace setVariable [QGVAR(cached_condition), nil]; }, [], CACHETIME] call CBA_fnc_waitUntilAndExecute;
} else {
	// return the cached result
	_return = _cached#0;
};



switch (true) do {
	case (SET(groupLeaders_enabled) && {leader player == player}): {true};
	case (SET(admin_enabled) && {[] call BIS_fnc_admin > 0}): {true};
	case (SET(rankBased_mode) < rankId player): {true};
	default {false};
};

// End of function
_return