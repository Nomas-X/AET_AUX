private _code = {
	if (hasInterface && aet_aux_disclaimer_enabled) then {
		
		["AET_disclaimer_request", ["REQUEST", player]] call CBA_fnc_serverEvent;
	};
};

if (missionNamespace getVariable ["cba_settings_ready",false]) then _code else { ["CBA_settingsInitialized",_code,[]] call CBA_fnc_addEventHandler; };