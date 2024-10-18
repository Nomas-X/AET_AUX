/*
Author: Redwan S / Nomas

Description:
    This function is used to start players in cargo of a vehicle and ensure that if the vehicle is full or no longer exist then the player will be put elsewhere.

Arguments:
	0. <Object> Unit to start in vehicle

	1. <Array> Includes a list of players that the unit must be in to be teleported

	2. <Object> Vehicle to be teleported into

	3. <String> or <Object> (Optional) - Marker or invisible helipad to be teleported to if the vehicle is not alive or is full, default is none

Return Value: <nil>

Example:
	private _listOfPlayers_1 = ["P_1", "P_2", "P_3"] call HR_fnc_ValidateObjects;
	[player, _listOfPlayers_1, HELI_1, "LZ"] call AET_fnc_startInVehicle;
*/
params ["_unit", "_listOfPlayers", "_vehicle", ["_altPos", false]];

if (_unit in _listOfPlayers) then {
	if !(isNil {_vehicle}) then {
		if (alive _vehicle && _vehicle emptyPositions "Cargo" > 0) then {
			_unit moveInCargo _vehicle;
		} else {
			if (!(_altPos isEqualType false)) then {
				if (_altPos isEqualType "") then {
					_unit setPos (getMarkerPos _altPos);
				};
				if (_altPos isEqualType objNull) then {
					_unit setPosATL (getPosATL _altPos);
				};
			};
		};
	} else {
		if (!(_altPos isEqualType false)) then {
			if (_altPos isEqualType "") then {
				_unit setPos (getMarkerPos _altPos);
			};
			if (_altPos isEqualType objNull) then {
				_unit setPosATL (getPosATL _altPos);
			};
		};
	};
};