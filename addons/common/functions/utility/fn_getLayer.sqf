/*
Author: Leopard20
	Was provided to Nomas in the Arma 3 Discord by Leopard20.

Description:
    This function is used in combination with AET_fnc_useRemoteReturn to obtain layer entities.

Arguments:
	0. <String> The name of the array

Return Value:
	<Array> in format [objects, markers] (or empty array if the layer does not exist)

Example:
	[_Triggers] call AET_fnc_getLayer;
*/
params ["_layer"];

getMissionLayerEntities _layer;