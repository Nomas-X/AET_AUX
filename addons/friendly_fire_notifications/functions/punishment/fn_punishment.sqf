/*
Function:
    FFPP_fnc_punishment

Description:
    Punishes the player given for FF.
    Doesn't do the checking itself, refer to FFPP_fnc_punishment_FF.

Scope:
    <SERVER>

Environment:
    <UNSCHEDULED> Suspension may cause simultaneous read then write of the players FF stats, leading to the last call taking preference.

Parameters:
    <OBJECT> Player that is being verified for FF.
    <NUMBER> The amount of time to add to the players total sentence time.
    <NUMBER> Raise the player's total offence level by this percentage. (100% total = Ocean Gulag).
    <OBJECT> [OPTIONAL] The victim of the player's FF.

Returns:
    <STRING> Either an exemption type or a return from fn_punishment.sqf.

Examples:
    [_instigator,_timeAdded,_offenceAdded,_victim] remoteExec ["FFPP_fnc_punishment",2,false]; // How it should be called from another FFPP_fnc_punishment_FF.
    // Unit Tests:
    [cursorObject, 0, 0] remoteExec ["FFPP_fnc_punishment",2];                                 // Ping with FF Warning
    [cursorObject,120, 1] remoteExec ["FFPP_fnc_punishment",2];                                // Punish, 120 additional seconds
    [player,10, 1] remoteExec ["FFPP_fnc_punishment",2];                                       // Test Self Punish, 10 additional seconds
    // Function that goes hand-in-hand
    [cursorObject,"forgive"] remoteExec [FFPP_fnc_punishment_release,2]; // Forgive all sins

Author: Caleb Serafin
License: MIT License, Copyright (c) 2020 Official AntiStasi Community
*/
params ["_instigator",["_victim",objNull],["_customMessage",""]];
private _filename = "fn_punishment.sqf";

//////////////Enable Switches///////////////
if (isNil "FFPP_FFPunEnabled") then { FFPP_FFPunEnabled = true; };
if (isNil "FFPP_FFPunTellInstigator") then { FFPP_FFPunTellInstigator = false; };
if (isNil "FFPP_FFPunTellVictim") then { FFPP_FFPunTellVictim = false; };
if (isNil "FFPP_FFPunTellAdmin") then { FFPP_FFPunTellAdmin = true; };

//////////Fetches punishment values/////////
private _UID = getPlayerUID _instigator;
private _name = name _instigator;
private _currentTime = (floor serverTime);
private _keyPairs = [["offenceTotal",0],["lastOffenceTime",_currentTime]];
([_UID,_keyPairs] call FFPP_fnc_punishment_dataGet) params ["_offenceTotal","_lastTime"];

///////////////Data validation//////////////
_lastTime = (0 max _lastTime) min _currentTime;
_offenceTotal = ceil (0 max _offenceTotal);

//////////////FF score addition/////////////
_offenceTotal = _offenceTotal + 1;

//////////Saves data to instigator//////////
private _keyPairs = [["offenceTotal",_offenceTotal],["lastOffenceTime",_currentTime],["name",_name],["player",_instigator]];
[_UID,_keyPairs] call FFPP_fnc_punishment_dataSet;

///////////////Victim Notifier//////////////
private _injuredComrade = "";
private _victimStats = "damaged systemPunished [AI]";
if (_victim isKindOf "Man") then {
    _injuredComrade = ["Injured comrade: ",name _victim] joinString "";
    if (FFPP_FFPunTellVictim && isPlayer _victim) then {
        ["FF Notification", [_name," hurt you!"] joinString ""] remoteExec ["FFPP_fnc_customHint", _victim, false];
    };
    private _UIDVictim = ["AI", getPlayerUID _victim] select (isPlayer _victim);
    _victimStats = ["damaged ",name _victim," [",_UIDVictim,"]"] joinString "";
};

/////////////Instigator Notifier////////////
private _playerStats = ["Offences: ",str _offenceTotal,", Seconds since last FF: ",str _lastTime,", Custom message: ", _customMessage] joinString "";
[2, ["WARNING | ",_name," [",_UID,"] ",_victimStats,", ",_playerStats] joinString "", _filename] call FFPP_fnc_log;

if (FFPP_FFPunTellInstigator) then {
    ["FF Warning", ["Watch your fire!",_injuredComrade,_customMessage] joinString "<br/>"] remoteExec ["FFPP_fnc_customHint", _instigator, false];
};

if (FFPP_FFPunTellAdmin) then {
    private _admin = [] call FFPP_fnc_getAdmin;
    if (!isNull _admin) then {
        ["FF Notification", [_name," has been found guilty of FF.<br/>Total Offences: ",str _offenceTotal, "<br/>Victim: ",name _victim] joinString ""] remoteExec ["FFPP_fnc_customHint",_admin,false];
    };
};

"WARNING";
