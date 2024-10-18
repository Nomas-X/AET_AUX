/*
    Author: [Håkon]
    Description:
        Sends an airstrike at the targets dropping one LGB of the chose type at each of them

    Arguments:
    0. <Array>  Objects/Positions
    1. <String> Bomb type ("HE", "Cluster", "AT") [Optional - default: "HE"]
    2. <Side>   Side of plane [Optional - default: west]
    3. <Bool>   Plane track target (first target passed) [Optional - default: false]
    4. <Int>    Egres angle [Optional - default: random 360]
    5. <String> Plane type [Optional - default: "B_Plane_CAS_01_dynamicLoadout_F"]

    Return Value:
    <String> Script handler

    Scope: Any
    Environment: Scheduled
    Public: Yes
    Dependencies:

    Example: [[_obj1, _obj2, _pos1], "he", independent, false, 0] spawn HR_fnc_LGAirstrike;


    License: MIT License
*/
params [["_targets", [], [[]]], ["_bombType", "HE"], ["_side", west, [sideUnknown]], ["_track", false], ["_dir", random 360], ["_planeType", "B_Plane_CAS_01_dynamicLoadout_F"]];
if !(canSuspend) exitWith {diag_log "| Laser Guided Airstrike | this needs to run in scheduled environment, use spawn"};
if (_targets isEqualTo []) exitWith {diag_log "| Laser Guided Airstrike | No targets passed"};

//make sure we have a obj reference for targeting
private _toDelete = [];
private _allTargets = _targets apply {
    if (_x isEqualType objNull) then {
        _x
    } else {
        private _can = "Land_Can_Dented_F" createVehicle _x;
        _can setPos _x;
        if (isServer) then {
            _can hideObjectGlobal true
        } else {
            [_can, true] remoteExec ["hideObjectGlobal", 2];
        };
        _toDelete pushBack _can;
        _can
    };
};
_allTargets = _allTargets select {!isNull _x};
private _target = _allTargets#0;

//select bomb type
private ["_pylon", "_bomb", "_flyHight", "_engagementDist"];
_engagementDist = 1000;
_flyHight = 350;
switch (toLower _bombType) do {
    case "he": {_pylon = "PylonMissile_1Rnd_Bomb_04_F"; _bomb = "Bomb_04_Plane_CAS_01_F"};
    case "cluster": {_pylon = "PylonMissile_1Rnd_BombCluster_01_F"; _bomb = "BombCluster_01_F"};
    case "at": {_pylon = "PylonRack_1Rnd_LG_scalpel"; _bomb = "missiles_SCALPEL"; _engagementDist = 2000};
    default {_pylon = "PylonMissile_1Rnd_Bomb_04_F"; _bomb = "Bomb_04_Plane_CAS_01_F"};
};

//geting target position
private _pos = getPos _target;
private _laseTarget = _target;

//spawn plane
private _planePos = _pos getPos [4000, _dir + 180];
private _planefn = [_planePos, _dir, _planeType, _side] call bis_fnc_spawnvehicle;
private _plane = _planefn select 0;
private _planeCrew = _planefn select 1;
{_x disableAI "AUTOTARGET"; _x disableAI "TARGET"}forEach _planeCrew;
private _groupPlane = _planefn select 2;

//orient get it flying and set its loadout
_plane setDir (_plane getRelDir _pos);
_plane setPos (_planePos vectorAdd [0,0,_flyHight]);
_plane setVelocityModelSpace (velocityModelSpace _plane vectorAdd [0, 150, 50]);
_plane flyInHeight _flyHight;
_posASL = AGLToASL _pos;
_plane flyInHeightASL [(_posASL select 2) + _flyHight, (_posASL select 2) + _flyHight, (_posASL select 2) + _flyHight];

//Set fired event, to handle missile guidance
_plane setVariable ["HR_Airstrike_Targets", +_allTargets];
_plane addEventHandler ["Fired", {
    params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
    private _targets = _unit getVariable "HR_Airstrike_Targets";
    if (!isNil "_targets" && {count _targets > 0}) then {
        private _trg = _targets#0;
        private _laserTrg = "LaserTargetW" createVehicle getPos _trg;
        _laserTrg attachTo [_trg, [0,0,0]];
        _projectile setMissileTarget _laserTrg;
        _targets deleteAt 0;
        _unit setVariable ["HR_Airstrike_Targets", _targets];
        _laserTrg spawn {sleep 10; detach _this; deleteVehicle _this};
    };
}];

//set pylon loadout
private _pylonsCfg = (configFile >> "CfgVehicles" >> _planeType >> "Components" >> "TransportPylonsComponent");
{
    private _attachement = getArray (_x >> "attachment");
    private _loadoutMags = _attachement apply { getText (configFile >> "CfgMagazines" >> _x >> "pylonWeapon") };
    {
        _plane removeWeaponTurret [_x, [-1]];
        _plane removeWeaponTurret [_x, [0]];
    } forEach _loadoutMags;
} forEach (configProperties [(_pylonsCfg >> "Presets")]);

_pylons = "true" configClasses (_pylonsCfg >> "Pylons");
{
    if ("pylon" in toLower configName _x) then {
        _plane setPylonLoadout [_forEachIndex +1, _pylon, true];
    };
} forEach _pylons;


//get pos of path
private _dp = _pos getPos [10, _dir +180];
_dp = _dp vectorAdd [0,0,150];
private _fp = _pos getPos [4000, _dir];
_fp = _fp vectorAdd [0,0,150];

//set waypoints
private _wp1 = group _plane addWaypoint [_dp, 0];
_wp1 setWaypointType "MOVE";
_wp1 setWaypointSpeed "FULL";
_wp1 setWaypointBehaviour "CARELESS";
_plane setCollisionLight true;
private _wp3 = group _plane addWaypoint [_fp, 0];
_wp3 setWaypointType "MOVE";
_wp3 setWaypointSpeed "FULL";

if (_track) then {
    [_wp1, _laseTarget, _plane, _flyHight] spawn {
        params ["_wp", "_laseTarget", "_plane", "_flyHight"];
        while {sleep 1; (_plane distance2D _laseTarget > 800)} do {
            _pos = getPos _laseTarget;
            _pos set [2, _flyHight];
            _wp setWaypointPosition [_pos, 0];
        };
    };
};

//wait to fire
private _targetCount = count _allTargets - 1;
waitUntil {_plane distance2D _laseTarget < _engagementDist};
for "_i" from 0 to _targetCount do {
    private _bombTarget = _allTargets#_i;
    _plane fireAtTarget [_bombTarget,_bomb];
};

//cleanUp
private _timeOut = time + 300;
waitUntil {(currentWaypoint (group _plane) == 3) or (time > _timeOut)};
{deleteVehicle _x} forEach crew _plane;
{deleteVehicle _x} forEach _toDelete;
deleteVehicle _plane;
