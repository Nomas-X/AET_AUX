#include "../script_component.hpp"

/*
Authors:
	Redwan S / Nomas
	OverlordZorn

Description:
    This function is used to initialize the disclaimer after CBA setting initialization if the CBA settings allows it.

Arguments:
	N/A

Return Value:
	<Nil>

Example:
	[] call AET_disclaimer_fnc_postInit;
*/


private _code = {
	private _cond = hasInterface && { SET(enabled) && { !( SET(disable_in_editor) && { is3DENPreview } ) }};
	
	if _cond then { 
		[QGVAR(EH_request), ["REQUEST", player]] call CBA_fnc_serverEvent; 
		
		if (SET(disableSafetymode) != "NO_SAFETY") then {
			[true] call FUNC(handlesafety);
		}
	} else {

		if (SET(disableSafetymode) != "DISCLAIMER_END" && { SET(disableSafetymode) != "NO_SAFETY" }) then {

			[true] call FUNC(handlesafety);
		};
	};

};

if (missionNamespace getVariable ["cba_settings_ready",false]) then _code else { ["CBA_settingsInitialized",_code,[]] call CBA_fnc_addEventHandler; };