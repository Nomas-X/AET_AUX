#include "../script_component.hpp"

private _code = {
	if (hasInterface && SET(enabled)) then {
		
		[QGVAR(EH_request), ["REQUEST", player]] call CBA_fnc_serverEvent;
	};
};

if (missionNamespace getVariable ["cba_settings_ready",false]) then _code else { ["CBA_settingsInitialized",_code,[]] call CBA_fnc_addEventHandler; };