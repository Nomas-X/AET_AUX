private _arrayMaster = (loadFile "AET_dont_touch\master_cba_settings.sqf") regexFind ["^[^\r\n]+"];
private _arrayMission = (loadFile "cba_settings.sqf") regexFind ["^[^\r\n]+"];

_arrayMaster = flatten _arrayMaster select {typeName _x == "STRING"};
_arrayMission = flatten _arrayMission select {typeName _x == "STRING"};

if (count _arrayMaster isNotEqualTo count _arrayMission ) then { systemChat "ARRAYS NOT EQUAL NUMBER!"; } else { systemChat "ARRAYS ARE EQUAL NUMBER!"; };

private _arrayDifference = [];

for "_line" from 0 to (count _arrayMission) do {
	private _lineMaster = _arrayMaster#_line;
	private _lineMission = _arrayMission#_line;

	if (_lineMaster isNotEqualTo _lineMission) then {
		_arrayDifference pushBack [_line, _lineMission, _lineMaster];
	};
};

_arrayDifference