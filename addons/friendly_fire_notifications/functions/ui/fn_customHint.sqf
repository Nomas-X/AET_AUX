/*
Function:
    CSS_fnc_customHint

Description:
    Creates fancy notification.
    Pre-parse body text to take control of the whole notification.
    Note: you don't need pre-parse for custom heading/body XML, just insert where plain text would go.

Scope:
    <LOCAL> Execute on each player to add a global notification.

Environment:
    <ANY>.

Parameters:
    <STRING> Heading of your notification.
    <STRING> Body of your notification. | <TEXT> Provide whole notification (except footer).
    <BOOLEAN> Silent Notification, false if you want to annoy players. [DEFAULT=false]
    [<STRING>,<SCALER>] Icon Path & Aspect Ratio. [DEFAULT=["z\aet\addons\friendly_fire_notifications\functions\ui\UI\images\logo.paa",4] (512/128=4)]

Returns:
    <BOOLEAN> true if it hasn't crashed; false if it does not have an interface; nil if it has crashed.

Examples:
    ["FooBar", "Hello World"] call FFPP_fnc_customHint;
    ["FooBar", "Hello World"] remoteExec ["FFPP_fnc_customHint", 0, false];
    //Save Notify
        ["Restart Notification", "Please make your way to HQ as a restart will occure soon™<br/><br/>Please make sure you save your stats at the Map.", true] remoteExec ["FFPP_fnc_customHint", 0, false];
    ["Vaya...", "Parece que sus notificaciones importantes se cifraron.<br/><br/>Nadie espera el cifrado español.", false, ["z\aet\addons\friendly_fire_notifications\functions\ui\images\A3Logo.paa",1]] remoteExec ["FFPP_fnc_customHint", 0, false];

    // Pre-parse FooBar(Hello World) NoMacro
        private _iconXML = parseText "<img color='#ffffff' image='z\aet\addons\friendly_fire_notifications\functions\ui\images\logo.paa' align='center' size='2' shadow='1' shadowColor='#000000' />";
        private _separator  = parseText "<br/><img color='#e6b24a' image='z\aet\addons\friendly_fire_notifications\functions\ui\images\img_line_ca.paa' align='center' size='0.60' />";
        private _header = parseText "<br/><br/><t size='1.2' color='#218a36' shadow='1' shadowColor='#000000'>FooBar</t>";
        private _body = parseText "<br/><br/><t size='1' color='#ffffff' shadow='1' shadowColor='#000000'>Hello World</t><br/>";
        FooBarParse = composeText [_iconXML, _header, _separator, _body, _separator];
        ["FooBar", FooBarParse] call FFPP_fnc_customHint;

Authors: Caleb Serafin
License: MIT License, Copyright (c) 2020 Official AntiStasi Community
*/
params [
    ["_headerText", "", [""]],
    ["_bodyText", "", ["",parseText ""]],
    ["_isSilent", false, [false]],
    ["_iconData", ["z\aet\addons\friendly_fire_notifications\functions\ui\images\A3Logo.paa",2], [ [] ], 2]
];
private _filename = "fn_customHint.sqf";

if (!hasInterface) exitWith {false;}; // Disabled for server & HC.

private _structuredText = parseText "";
if (_bodyText isEqualType parseText "") then {
    _structuredText = _bodyText;
} else {
    _structuredText = parseText ([
        "<t size='1' color='#ffffff' font='RobotoCondensed' align='center' valign='middle' underline='0' shadow='1' shadowColor='#000000' shadowOffset='0.0625' colorLink='#0099ff' >",
        "<img size='",8/_iconData#1,"' shadowOffset='",0.015625*_iconData#1,"' image='",_iconData#0,"' /><br/><br/>",
        "<t size='1.2' color='#218a36' >",
        _headerText,
        "</t><br/><img size='0.60' color='#218a36' image='z\aet\addons\friendly_fire_notifications\functions\ui\images\img_line_ca.paa' /><br/><br/><t >",
        _bodyText,
        "</t><br/><br/><img size='0.60' color='#218a36' image='z\aet\addons\friendly_fire_notifications\functions\ui\images\img_line_ca.paa' /></t>"
    ] joinString "");
};

if (_isSilent) then {
    hintSilent _structuredText;
} else {
    hint _structuredText;
};
true;

// Arma 3 Apex #218a36 // BIS Website Differs incorrectly from in-game
// Arma 3 #c48214
