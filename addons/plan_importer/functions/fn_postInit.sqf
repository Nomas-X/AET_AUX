#include "../script_component.hpp"

private _code = {
	if (hasInterface && {SET(mode) != "NO_ONE"}) then {

		[] call FUNC(addActions);
	};
};

if (missionNamespace getVariable ["cba_settings_ready",false]) then _code else { ["CBA_settingsInitialized",_code,[]] call CBA_fnc_addEventHandler; };