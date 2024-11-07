if (!isNil 'gtd_map_allMarkers') then {
	{
		deleteMarker _x;
	} forEach gtd_map_allMarkers;
};

if (!isNil 'gtd_map_allMetisMarkers') then {
	{
		[_x] call mts_markers_fnc_deleteMarker
	} forEach gtd_map_allMetisMarkers;
};

systemChat "Current plan deleted";
[format["Plan deletion done by: %1 | ID64: %2", name player, getPlayerUID player]] remoteExec ["diag_log", 2, false];