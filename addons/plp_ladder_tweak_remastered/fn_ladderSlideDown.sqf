private _unit = player ;

if !(getText (configFile >> "CfgMovesMaleSdr" >> "States" >> animationState _unit >> "actions") in ["LadderCivilActions","LadderRifleActions"]) exitWith {} ;	// is the unit on ladder?

private _building = call {
	private _surfaces = (lineIntersectsSurfaces [
		getPosASL _unit vectorAdd [sin getDir _unit*-5,cos getDir _unit*-5,0],
		getPosASL _unit vectorAdd [sin getDir _unit*5,cos getDir _unit*5,0],
		_unit,objNull,true,1,"GEOM","VIEW",true
	]) ;

	if (count _surfaces == 0) exitWith {objNull} ;
	(_surfaces#0#3)
} ;

if (isNull _building) exitWith {} ;	// are we sure which building it is?

private _buildingCfg = configOf _building ;	// stupid way to get which ladder you're on
private _unitPos = _building worldToModel ASLToAGL getPosASL _unit ;
private _ladderPos = ({
	_x params ["_start","_end"] ;
	_start = _building selectionPosition _start ;
	_end = _building selectionPosition _end ;
	private _vector = _end vectorDiff _start ;
	private _vectorUnit = _unitPos vectorDiff _start ;
	private _isOnTheLine = (vectorMagnitude ((vectorNormalized _vector) vectorDiff (vectorNormalized _vectorUnit)) < 0.001) ;	// is the unit on the line between start and end?
	private _dist = (_start distance _end) + 0.01 ;
	private _distUnit1 = _start distance _unitPos ;
	private _distUnit2 = _end distance _unitPos ;

	// and are we 100% sure the current ladder is the ladder I'm looking for?
	if (_isOnTheLine and _dist > _distUnit1 and _dist > _distUnit2) exitWith {
		//[[_end,_start],[_start,_end]] select ((_start#2) < (_end#2))
		[_end,_start] select ((_start#2) < (_end#2))	// select the bottom selection, just in case
	} ;
} forEach getArray (_buildingCfg >> "ladders")) ;

if (isNil "_ladderPos") exitWith {systemChat "failed to get the ladder!"} ;	// just in case

// ladders[] = {{"Ladder_1_start","Ladder_1_end",2.5,"Ladder_1_action"},{"Ladder_2_start","Ladder_2_end",2.5,"Ladder_2_action"},{"Ladder_3_start","Ladder_3_end",2.5,"Ladder_3_action"}};

_unit action ["ladderOff",_building] ;	// force leave the ladder
_unit playMoveNow call {	// play sliding animation
	if (primaryWeapon _unit == currentWeapon _unit and currentWeapon _unit != "") exitWith {"PLP_LTR_LadderRifleSlide"} ;
	"PLP_LTR_LadderCivilSlide"
} ;

//private _logic = "Logic" createVehicleLocal [0,0,0] ;	// create logic and attach so won't get collide damage
private _logic = createAgent ["Logic",ASLToAGL getPosASL _unit,[],0,"CAN_COLLIDE"] ;
_logic setPosASL getPosASL _unit ;
_logic setVectorDirAndUp [vectorDir _unit,vectorUp _unit] ;

[_unit,_building,_unitPos,_ladderPos,time,_logic] spawn {
	params ["_unit","_building","_unitPos","_ladderPos","_time","_logic"] ;
	_logic setPosASL getPosASL _unit ;
	_unit attachTo [_logic,[0,0,0]] ;

	sleep 0.3 ;	// pauses a bit to make the unit prepare for the slide

	addMissionEventHandler ["EachFrame",{	// create the EH so will execute the position update each frame
		_thisArgs params ["_unit","_building","_unitPos","_ladderPos","_timeNow","_logic"] ;

		private _initDist = _unitPos distance _ladderPos ;
		private _time = time - _timeNow ;
		private _finishTime = _initDist/5 ;	// will slide down ~5m per a sec

		//private _progress = _time ;	// pauses a bit to make the unit prepare for the slide

		if (_time > _finishTime or !alive _unit or (getPosASL _unit#2) < 0 or !alive _building) exitWith {	// did it reached the end? or something inappropriate situation?
			removeMissionEventHandler [_thisEvent,_thisEventHandler] ;
			call {	// play landing animation
				if (primaryWeapon _unit == currentWeapon _unit and currentWeapon _unit != "") exitWith {
					_unit playMoveNow "PLP_LTR_LadderRifleSlideEnd" ;
					_unit playMove "AmovPercMstpSlowWrflDnon" ;
				} ;
				_unit playMoveNow "PLP_LTR_LadderCivilSlideEnd" ;
				_unit playMove "AmovPercMstpSnonWnonDnon" ;
			} ;
			deleteVehicle _logic ;
		} ;

		private _pos = vectorLinearConversion [
			0,_finishTime,_time,
			_unitPos,_ladderPos,
			true
		] ;

		_logic setPosASL (_building modelToWorldWorld _pos) ;
	},[_unit,_building,_unitPos,_ladderPos,time,_logic]] ;
} ;
//}] remoteExec ["spawn",0]