/*
Author: Skippie, fixed by Nomas
Description:
	The function enables AI of all units in the given layer

	Parameters:
	0. STRING: name of the layer
	1. STRING: AI to enable

	Example:
	["Ambush Layer", "PATH"] call AET_common_fnc_enableLayerAI;
	["Layer 1", "TARGET"] call AET_common_fnc_enableLayerAI;
*/

if !(isServer) exitWith {};

params [
	["_layer", "", [""]],
	["_ai", "", [""]]
];

private _ais = ["all", "aimingerror", "anim", "autocombat", "autotarget", "checkvisible", "cover", "fsm", "lights", "minedetection", "move", "nvg", "path", "radioprotocol", "suppression", "target", "teamswitch", "weaponaim"];
private _units = (getMissionLayerEntities _layer) select 0;

if (!((toLower _ai) in _ais)) exitWith {
	["Failed to enable AI: incorrect AI value"] remoteExec ["systemChat"];
};

{
	[_x, _ai] remoteExec ["enableAI"];
} forEach _units;
