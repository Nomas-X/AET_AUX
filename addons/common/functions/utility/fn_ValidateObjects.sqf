/*
Author: Håkon
Description:
    Retrives object from var string

Arguments:
0. <Array<String>> var names

Return Value:
<Array<Object>> ObjNull if not found else object assigned to the var

Scope: Any
Environment: Any
Public: Yes
Dependencies:

Example:
["P_1", "P_2"] call HR_fnc_validateObjects;

License: MIT License
*/
_this apply {
	if (isNil _x) then {
		objNull
	} else {
		call compile _x
	};
};
