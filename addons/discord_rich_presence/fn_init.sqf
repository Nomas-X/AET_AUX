/* ----------------------------------------------------------------------------
Author:
	ConnorAU - https://github.com/ConnorAU

Function:
	DiscordRichPresence_fnc_init

Description:
	Initialises the discord rich presence application with default values

Parameters:
	None

Return:
	Nothing
---------------------------------------------------------------------------- */

// Exit init if mod is manually disabled by player
private _manuallyDisabled = profileNamespace getVariable ["DiscordRichPresence_disabled",false];
if _manuallyDisabled exitWith {};

// Exit init if the server isn't Antistasi Community Event Server
if (serverName isNotEqualTo "Antistasi Community Event Server") exitWith {};

private _isExitingMission = _this isEqualTo 0;

// Use mission file settings if they exist, otherwise configFile settings, otherwise default values.
private _cfgDirs = [
	configFile >> "CfgDiscordRichPresence"
];

// Force configFile settings if exiting a mission
private _index = if (_isExitingMission) then {1} else {_cfgDirs findIf {isClass _x}};
private _cfgDir = _cfgDirs param [_index,configNull];
private _cfgDirExists = isClass _cfgDir;

(if _cfgDirExists then {
	// Mission/Mod defined settings
	[
		getText(_cfgDir >> "applicationID"),
		getText(_cfgDir >> "defaultDetails"),
		getText(_cfgDir >> "defaultState"),
		getText(_cfgDir >> "defaultLargeImageKey"),
		getText(_cfgDir >> "defaultLargeImageText"),
		getText(_cfgDir >> "defaultSmallImageKey"),
		getText(_cfgDir >> "defaultSmallImageText"),
		getArray(_cfgDir >> "defaultButtons"),
		if (isNumber(_cfgDir >> "useTimeElapsed")) then {getNumber(_cfgDir >> "useTimeElapsed") == 1} else {true}
	]
} else {
	// Default application when the mission/mod has no custom support.
	if (isClass(configFile >> "CfgMods" >> "vn")) then {
		[
			"838648744127889439",
			briefingName,
			getText(configFile >> "CfgWorlds" >> worldName >> "description"),
			"background",
			serverName,
			"sogpf",
			"S.O.G. Prairie Fire",
			[],
			true
		]
	} else {
		private _ownedDLCs = getDLCs 1;
		private _imageLarge = ["a3_1","a3_2"];
		{
			if (_x#1 in _ownedDLCs) then {_imageLarge pushBack (_x#0)};
		} forEach [
			["apex",395180],
			["heli",304380],
			["jets",601670],
			["karts",288520],
			["orange",571710],
			["tacops",744950],
			["tanks",798390],
			["contact",1021790]
		];

		[
			"483761380583931915",
			briefingName,
			getText(configFile >> "CfgWorlds" >> worldName >> "description"),
			selectRandom _imageLarge,
			serverName,
			"arma3",
			"Arma 3",
			[],
			true
		]
	}
}) params [
	"_applicationID","_defaultDetails","_defaultState",
	"_defaultLargeImageKey","_defaultLargeImageText",
	"_defaultSmallImageKey","_defaultSmallImageText",
	"_defaultButtons","_showTimeElapsed"
];

private _curLoadSuccess = uiNamespace getVariable ["DiscordRichPresence_LoadSuccess",false];
private _curApplicationID = uiNamespace getVariable ["DiscordRichPresence_ApplicationID",""];
if (!_curLoadSuccess || _applicationID != _curApplicationID) then {
	private _ret = "DiscordRichPresence" callExtension ["init",[text _applicationID]];

	// Set to uiNamespace for persistence between missions
	_curLoadSuccess = _ret#1 == 1;
	uiNamespace setVariable ["DiscordRichPresence_LoadSuccess",_curLoadSuccess];
};

// Set to missionNamespace for backwards compatibility
missionNamespace setVariable ["DiscordRichPresence_LoadSuccess",_curLoadSuccess];

if _curLoadSuccess then {
	uiNamespace setVariable ["DiscordRichPresence_ApplicationID",_applicationID];

	private _isMainMenu = false;
	if (!_cfgDirExists) then {
		// Main Menu check (if using default values)
		private _mission = toLower format["%1.%2",missionName,worldName];
		private _mainMenuMissions = "true" configClasses (configFile >> "CfgMissions" >> "CutScenes");
		_isMainMenu = _mainMenuMissions findIf {_mission in toLower getText(_x >> "directory")} > -1;
	};

	// Force "Main Menu" info if exiting a mission
	if (_isMainMenu || _isExitingMission) then {
		_defaultDetails = "Main Menu";
		_defaultState = "";
		_defaultLargeImageText = "";
	};

	// Check if the mission is still running?
	if !(_isExitingMission) then {
		_defaultDetails = briefingName;
		_defaultState = getText(configFile >> "CfgWorlds" >> worldName >> "description");
		_defaultLargeImageText = "";
	};

	private _settings = [
		["UpdateDetails",_defaultDetails],
		["UpdateState",_defaultState],
		["UpdateLargeImageKey",_defaultLargeImageKey],
		["UpdateLargeImageText",_defaultLargeImageText],
		["UpdateSmallImageKey",_defaultSmallImageKey],
		["UpdateSmallImageText",_defaultSmallImageText],
		["UpdateButtons",_defaultButtons]
	];
	if _showTimeElapsed then {_settings pushBack ["UpdateStartTimestamp",[0,0]]};

	_settings call DiscordRichPresence_fnc_update;

	if _isMainMenu exitWith {};

	[] spawn {
		private _display = displayNull;
		waitUntil {
			_display = findDisplay 46;
			!isNull _display
		};

		_display displayAddEventHandler ["Unload",{
			//uiNamespace setVariable ["DiscordRichPresence_LoadSuccess",false];
			//missionNamespace setVariable ["DiscordRichPresence_LoadSuccess",false];
			//"DiscordRichPresence" callExtension ["CloseRichPresence",[]];

			0 call DiscordRichPresence_fnc_init;
		}];
	};
};

nil
