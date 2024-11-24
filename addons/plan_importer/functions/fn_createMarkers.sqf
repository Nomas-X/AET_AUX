#include "../script_component.hpp"
/*
Author: Redwan S. / Nomas

Description:
    This function is used to create the markers after the input has been parsed by the AET_plan_importer_fnc_importPlan function.

Arguments:
	0. <Number> Channel ID that the markers will be created in.

	1. <Array>
		1.1. <Array> Vanilla Arma 3 markers information.

		1.2. <Array> Poly / line markers information.

		1.3. <Array> Metis markers information.

Return Value:
	<Nil>

Example:
	[0, [[[583799,7164.790174002048,14910.015476361426,"mil_circle","ColorBlue","Weeee",0,1]],[[583800,[7126.737950263193,16000.22673069453,7133.663837484051,15092.303595865986],"ColorPink"]],[[583798,7128.2351220938735,16190.333386507982,"blu",false,0,0,0,0,"Hoorah",1]]]] call AET_plan_importer_fnc_createMarkers;
*/

params ["_channelSelection", "_plan"];

private _deletingMarkers = true;
private _playerSide = side player;
_deletingMarkers = [_playerSide] call FUNC(deletePlan);

private _code = {
	params ["_channelSelection", "_plan", "_playerSide", "_deletingMarkers"];
	_plan params ['_icons', '_poly', '_metis'];

	private _markersVariableNames = [QGVAR(allMarkers) + "_" + str(_playerSide), QGVAR(metisMarkers) + "_" + str(_playerSide)];
	private _pushBackCodeAllMarkers = compile (_markersVariableNames # 0 + " pushBack _marker");
	private _pushBackCodeMetisMarkers = compile (_markersVariableNames # 1 + " pushBack _marker");

	{
		_x params ['_id', '_points', '_color'];
		_points params ['_x', '_y'];
		private _marker = createMarkerLocal [ format ['_USER_DEFINED #%1/planops%2/%3', clientOwner, _id, _channelSelection], [_x, _y], 0];		// Why call it _user_defined?
		_marker setMarkerShapeLocal 'polyline';
		_marker setMarkerPolylineLocal _points;
		_marker setMarkerColor _color;
		[] call _pushBackCodeAllMarkers;
	} forEach _poly;

	{
		_x params ['_id', '_x', '_y', '_icon', '_color', '_text', '_rotate',['_scale',1]];
		private _marker = createMarkerLocal [ format ['_USER_DEFINED #%1/planops%2/%3', clientOwner, _id, _channelSelection], [_x, _y], 0];		// Why call it _user_defined?
		_marker setMarkerShapeLocal 'ICON';
		_marker setMarkerDirLocal _rotate;
		_marker setMarkerColorLocal _color; 
		_marker setMarkerTextLocal _text;
		_marker setMarkerTypeLocal _icon;
		if (_scale == 0) then {
			_marker setMarkerSize [1,1];
		} else {
			_marker setMarkerSize [_scale,_scale];
		};
		[] call _pushBackCodeAllMarkers;
	} forEach _icons;

	{
		_x params ['_id', '_x', '_y', '_sideid', '_dashed', '_icon', '_mod1', '_mod2', '_size', '_designation',['_scale',1]];
		private _marker = [[_x,_y], _channelSelection, true, [[_sideid, _dashed], [_icon, _mod1, _mod2], [_size, false, false], [], _designation], _scale * 1.3] call mts_markers_fnc_createMarker;
		[] call _pushBackCodeMetisMarkers
	} forEach _metis;

	publicVariable (_markersVariableNames # 0);
	publicVariable (_markersVariableNames # 1);
	systemChat "Plan was imported successfully!";
};

[{_this#3 == false}, _code, [_channelSelection, _plan, _playerSide, _deletingMarkers], 60] call CBA_fnc_waitUntilAndExecute;