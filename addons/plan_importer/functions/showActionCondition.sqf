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

#define CACHETIME	1*60

// Check for Cached result
private _cached = missionNamespace getVariable [QGVAR(cached_condition), "404"];


// returns 


private _return = false;

if (_cached isEqualTo "404") then {
	// run the normal checks
	_return = ...;





	//return the result and store it in the cache
	_cached = _return;
	missionNamespace setVariable [QGVAR(cached_condition)];
} else {
	// return the cached result
	_return = _cached;
};



switch (true) do {
	case (SET(groupLeaders_enabled) && {leader player == player}): {true};
	case (SET(admin_enabled) && {[] call BIS_fnc_admin > 0}): {true};
	case (SET(rankBased_mode) < rankId player): {true};
	default {false};
};

// End of function
_return