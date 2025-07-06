#include "../script_component.hpp"

/*
Authors:
	OverlordZorn
	Redwan S. / Nomas

Description:
    This function will play the Antistasi Event Team desclaimer screen and show the sponsor logo if the CBA setting allows it.

Arguments:
	N/A

Return Value:
	<Nil>

Example:
	[] call AET_disclaimer_fnc_play;
*/

if !(hasInterface) exitWith {};

2 fadeRadio 0;
2 fadeSound 0;

[] spawn {
    "disclaimerLayer_Background" cutText ["", "BLACK FADED", 999, true, false];

    waitUntil{sleep 1; !(isNil "BIS_fnc_init")};

    sleep 12;

    if (SET(enabled_logo)) then {
        "disclaimerLayer_Sponsor" cutText [SET(logoPath), "PLAIN DOWN", 5, true, true];
    };
	
    "disclaimerLayer_Text" cutText  [SET(text), "PLAIN", 5, true, true];
    
    sleep 12;
    
    "disclaimerLayer_Text" cutFadeOut 0.5;

    //To add more text parts simply uncomment the lines below, if you need a third then copy the lines below and give the layer a new name
    /*
    sleep 3;
    
    "disclaimerLayer_Extra" cutText  ["<t size='2'> This is the second text wall, the rason this is being shown to you is so we can tell if the descilaimer is working or not, as you can see my writing is not perfect cause this is not exactly important, the important part is the timing of it.\n May the land of our lords be free.</t>", "PLAIN", 5, true, true];
    
    sleep 12;
    
    "disclaimerLayer_Extra" cutFadeout 0.5;
    */
    if (SET(enabled_logo)) then {
        "disclaimerLayer_Sponsor" cutFadeOut 0.5;
    };
    sleep 3;

	if (fileExists SET(customIntro_path)) then {
		
		[] call compile preprocessFileLineNumbers SET(customIntro_path);
	};

    "disclaimerLayer_Background" cutText ["", "BLACK FADED", -1, true, false];
    "disclaimerLayer_Background" cutFadeOut 5;

    "dynamicBlur" ppEffectEnable true;
    "dynamicBlur" ppEffectAdjust [6];
    "dynamicBlur" ppEffectCommit 0;
    "dynamicBlur" ppEffectAdjust [0.0];
    "dynamicBlur" ppEffectCommit 5;

    5 fadeSound 1;
    5 fadeRadio 1;

    sleep 5;
    // at the end if this function, this needs to be here
    
    [QGVAR(EH_request), ["DONE", player]] call CBA_fnc_serverEvent;
    [QGVAR(EH_done), []] call CBA_fnc_localEvent;
};

[QGVAR(EH_done), {
    "dynamicBlur" ppEffectEnable false;
    // Gun safety off once disclaimer is done.
	if (SET(disableSafetymode) == "DISCLAIMER_END") then {
    
		[false] call FUNC(handlesafety);
	};
}] call CBA_fnc_addEventHandler;
