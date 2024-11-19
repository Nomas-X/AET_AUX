#include "../script_component.hpp"

private _code = {
	private _cond = hasInterface && { SET(enabled) && { !( SET(disable_on_editor) && { is3DENPreview } ) }};
	
	if _cond then { [QGVAR(EH_request), ["REQUEST", player]] call CBA_fnc_serverEvent; 	};

};

if (missionNamespace getVariable ["cba_settings_ready",false]) then _code else { ["CBA_settingsInitialized",_code,[]] call CBA_fnc_addEventHandler; };