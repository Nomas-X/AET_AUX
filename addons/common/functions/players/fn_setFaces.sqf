/*
Author: Redwan S / Nomas

Description:
    This function is used to give a unit or player a random face of the provided list on the start of the mission and ensure that he gets the same face on respawn. The function will not change the face of a player if his default face is part of the provided list.

Arguments:
	0. <Object> Unit to change the face of

	1. <Array> Includes a list of players that the unit must be in to have its face changed

	2. <Array> Includes a list of faces to have as the unit's new face

Return Value: <nil>

Example:
	[player, ["PersianHead_A3_04_a", "PersianHead_A3_04_l", "PersianHead_A3_04_sa"]] call AET_common_fnc_setFaces;
*/
params ["_unit", "_listOfFaces"];

//sets face
if (!((face _unit) in _listOfFaces)) then {
	private _face = selectRandom _listOfFaces;
	[_unit, _face] remoteExec ["setFace", 0, _unit];
};
