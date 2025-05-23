#include "../script_component.hpp"

/*	here, you put in your CBA Settings so they are available in the editor!
[
	
	QSET(displayMusic),					//    _setting     - Unique setting name. Matches resulting variable name <STRING>
	"CHECKBOX",								//    _settingType - Type of setting. Can be "CHECKBOX", "EDITBOX", "LIST", "SLIDER" or "COLOR" <STRING>
	["Display Music Title","This enables the message of the currently played music title by the CVO Music System"],
											//    _title       - Display name or display name + tooltip (optional, default: same as setting name) <STRING, ARRAY>
	["AET", "AET Music"],					//    _category    - Category for the settings menu + optional sub-category <STRING, ARRAY>
	false,									//    _valueInfo   - Extra properties of the setting depending of _settingType. See examples below <ANY>
	0,										//    _isGlobal    - 1: all clients share the same setting, 2: setting can't be overwritten (optional, default: 0) <NUMBER>
	{},										//    _script      - Script to execute when setting is changed. (optional) <CODE>
	false									//    _needRestart - Setting will be marked as needing mission restart after being changed. (optional, default false) <BOOL>
] call CBA_fnc_addSetting;
*/

[
	QSET(enabled),
	"CHECKBOX",
	["Enable Loadout Handler", "This is the main setting that controls whether the addon is enabled, if the setting is disabled then all the following options are ignored."],
	["AET Loadout Handler"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(enableOnRespawn),
	"CHECKBOX",
	["Enable On Respawn", "Should the loadout handler be triggered on player respawn?"],
	["AET Loadout Handler"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[	
	QSET(TFARCompatibleRadios),
	"EDITBOX",
	["TFAR Compatible Radios List", "The provided array will be used to verify whether a radio is TFAR compatible or not."],
	["AET Loadout Handler", "Basic Equipment"],
	"[""gm_radio_r126"", ""gm_radio_sem52a"", ""vn_o_item_radio_m252"", ""vn_b_item_radio_urc10"", ""TFAR_anprc148jem"", ""TFAR_anprc152"", ""TFAR_fadak"", ""TFAR_anprc154"", ""TFAR_pnr1000a"", ""TFAR_rf7800str""]",
	1,
	{},
	false
] call CBA_fnc_addSetting;

[	
	QSET(radiosInNeedOfProgrammer),
	"EDITBOX",
	["Radios In Need Of Programmer", "The provided array will be used to verify whether a radio needs a programmer or not. Must already be included in the previous setting's array."],
	["AET Loadout Handler", "Basic Equipment"],
	"[""TFAR_anprc154"", ""TFAR_pnr1000a"", ""TFAR_rf7800str""]",
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(radiosForEveryone_enabled),
	"CHECKBOX",
	["Radios For Everyone", "This would not replace any existing radios if the loadouts already includes them in the editor."],
	["AET Loadout Handler", "Basic Equipment"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(radioProgrammersIfNeeded_enabled),
	"CHECKBOX",
	["Radio Programmers If Needed", "This would add a radio programmer into the watch item slot if the loadouts includes a radio type that needs it."],
	["AET Loadout Handler", "Basic Equipment"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(radiosForEveryone_className),
	"EDITBOX",
	["Radio Class Name", "The provided class name is the item that will be given to players who's radio slot is empty or includes a radio that is not in the list of TFAR compatible radios."],
	["AET Loadout Handler", "Basic Equipment"],
	"TFAR_anprc148jem",
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(handWatchesForEveryone_enabled),
	"CHECKBOX",
	["Hand Watches For Everyone", "This would not replace any existing hand watche slot items if the loadouts already includes them in the editor."],
	["AET Loadout Handler", "Basic Equipment"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(handWatchesForEveryone_className),
	"EDITBOX",
	["Hand Watch Class Name", "The provided class name is the item that will be given to players who's hand watch slot is empty."],
	["AET Loadout Handler", "Basic Equipment"],
	"ItemWatch",
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(binocularsForEveryone_enabled),
	"CHECKBOX",
	["Binoculars For Everyone", "This would not replace any existing binoculars if the loadouts already includes them in the editor."],
	["AET Loadout Handler", "Basic Equipment"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(binocularsForEveryone_className),
	"EDITBOX",
	["Binocular Class Name", "The provided class name is the item that will be given to players who's binoculars slot is empty."],
	["AET Loadout Handler", "Basic Equipment"],
	"Binocular",
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(mapsForEveryone_enabled),
	"CHECKBOX",
	["Maps For Everyone", "This would not replace any existing maps if the loadouts already includes them in the editor."],
	["AET Loadout Handler", "Basic Equipment"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(mapsForEveryone_className),
	"EDITBOX",
	["Map Class Name", "The provided class name is the item that will be given to players who's map slot is empty."],
	["AET Loadout Handler", "Basic Equipment"],
	"ItemMap",
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(GPSsForEveryone_enabled),
	"CHECKBOX",
	["GPSs For Everyone", "This would not replace any existing GPSs if the loadouts already includes them in the editor."],
	["AET Loadout Handler", "Basic Equipment"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(GPSsForEveryone_className),
	"EDITBOX",
	["GPS Class Name", "The provided class name is the item that will be given to players who's GPS slot is empty."],
	["AET Loadout Handler", "Basic Equipment"],
	"ItemGPS",
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(compassesForEveryone_enabled),
	"CHECKBOX",
	["Compasses For Everyone", "This would not replace any existing compasses if the loadouts already includes them in the editor."],
	["AET Loadout Handler", "Basic Equipment"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(compassesForEveryone_className),
	"EDITBOX",
	["Compass Class Name", "The provided class name is the item that will be given to players who's compass slot is empty."],
	["AET Loadout Handler", "Basic Equipment"],
	"ItemCompass",
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(uniformInventory),
	"EDITBOX",
	["Uniform Equipment To Add", "The provided array of item class names and numbers is what will be used to add to the player's uniform post initialization. The uniform's space will be increased to accommodate the addition of all new items. This space increase will be special to the worn uniform item only, and will not be applied if a new uniform is used."],
	["AET Loadout Handler", "General Inventory Handling"],
	"[
		[""ACE_EarPlugs"", 1],
		[""ACE_Flashlight_XL50"", 1],
		[""ACE_MapTools"", 1],
		[""ACE_CableTie"", 2],
		[""ACE_Canteen"", 1],
		[""acex_intelitems_notepad"", 1],
		[""ACE_SpraypaintBlack"", 1],
		[""ACE_SpraypaintBlue"", 1],
		[""ACE_SpraypaintGreen"", 1],
		[""ACE_SpraypaintRed"", 1],
		[""ACE_SpraypaintWhite"", 1],
		[""ACE_SpraypaintYellow"", 1],
		[""ACE_elasticBandage"", 10],
		[""ACE_packingBandage"", 10],
		[""ACE_epinephrine"", 2],
		[""ACE_morphine"", 2],
		[""ACE_painkillers"", 1],
		[""ACE_splint"", 2],
		[""ACE_tourniquet"", 2]
	]",
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(vestInventory),
	"EDITBOX",
	["Vest Equipment To Add", "The provided array of item class names and numbers is what will be used to add to the player's vest post initialization. The vest's space will be increased to accommodate the addition of all new items. This space increase will be special to the worn vest item only, and will not be applied if a new vest is used."],
	["AET Loadout Handler", "General Inventory Handling"],
	"[
		[""SmokeShell"", 0],
		[""HandGrenade"", 0]
	]",
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(backpackInventory),
	"EDITBOX",
	["Backpack Equipment To Add", "The provided array of item class names and numbers is what will be used to add to the player's Backpack post initialization. The Backpack's space will be increased to accommodate the addition of all new items. This space increase will be special to the worn Backpack item only, and will not be applied if a new Backpack is used."],
	["AET Loadout Handler", "General Inventory Handling"],
	"[
		[""ACE_EntrenchingTool"", 0],
		[""ACE_IR_Strobe_Item"", 0]
	]",
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(medicLoadout),
	"EDITBOX",
	["Medic Equipment To Add", "The provided array of item class names and numbers is what will be used to add to any medic's loadout post initialization. The container's (decided by ""Medic Loadout Container"" CBA setting) space will be increased to accommodate the addition of all new items. This space increase will be special to the worn container item only, and will not be applied if a new container is used."],
	["AET Loadout Handler", "Trait Based Inventory Handling"],
	"[
		[""ACE_fieldDressing"", 0],
		[""ACE_elasticBandage"", 25],
		[""ACE_packingBandage"", 25],
		[""ACE_quikclot"", 0],
		[""ACE_bloodIV"", 5],
		[""ACE_bloodIV_500"", 5],
		[""ACE_bloodIV_250"", 5],
		[""ACE_plasmaIV"", 0],
		[""ACE_plasmaIV_500"", 0],
		[""ACE_plasmaIV_250"", 0],
		[""ACE_salineIV"", 0],
		[""ACE_salineIV_500"", 0],
		[""ACE_salineIV_250"", 0],
		[""ACE_adenosine"", 0],
		[""ACE_epinephrine"", 10],
		[""ACE_morphine"", 10],
		[""ACE_painkillers"", 0],
		[""ACE_splint"", 5],
		[""ACE_tourniquet"", 5],
		[""ACE_personalAidKit"", 4],
		[""ACE_surgicalKit"", 1],
		[""ACE_suture"", 0],
		[""ACE_bodyBag"", 0],
		[""ACE_bodyBag_blue"", 0],
		[""ACE_bodyBag_white"", 0]
	]",
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(engineerLoadout),
	"EDITBOX",
	["Engineer Equipment To Add", "The provided array of item class names and numbers is what will be used to add to any engineer's loadout post initialization. The container's (decided by ""Engineer Loadout Container"" CBA setting) space will be increased to accommodate the addition of all new items. This space increase will be special to the worn container item only, and will not be applied if a new container is used."],
	["AET Loadout Handler", "Trait Based Inventory Handling"],
	"[
		[""ToolKit"", 1],
		[""ACE_wirecutter"", 1]
	]",
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(explosiveSpecialistLoadout),
	"EDITBOX",
	["Explosive Specialist Equipment To Add", "The provided array of item class names and numbers is what will be used to add to any explosive specialist's loadout post initialization. The container's (decided by ""Explosive Specialist Loadout Container"" CBA setting) space will be increased to accommodate the addition of all new items. This space increase will be special to the worn container item only, and will not be applied if a new container is used."],
	["AET Loadout Handler", "Trait Based Inventory Handling"],
	"[
		[""ACE_DefusalKit"", 1],
		[""ace_marker_flags_green"", 10],
		[""ace_marker_flags_red"", 10]
	]",
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(medicLoadoutContainer),
	"LIST",
	["Medic Loadout Container", "The medic's equipment / loadout based on the ""Medic Equipment To Add"" CBA setting will added to the chosen container."],
	["AET Loadout Handler", "Trait Based Inventory Handling"],
	[["Uniform", "Vest", "Backpack"], ["Uniform", "Vest", "Backpack"], 2],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(engineerLoadoutContainer),
	"LIST",
	["Engineer Loadout Container", "The engineer's equipment / loadout based on the ""Engineer Equipment To Add"" CBA setting will added to the chosen container."],
	["AET Loadout Handler", "Trait Based Inventory Handling"],
	[["Uniform", "Vest", "Backpack"], ["Uniform", "Vest", "Backpack"], 2],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(explosiveSpecialistLoadoutContainer),
	"LIST",
	["Explosive Specialist Loadout Container", "The explosive specialist's equipment / loadout based on the ""Explosive Specialist Equipment To Add"" CBA setting will added to the chosen container."],
	["AET Loadout Handler", "Trait Based Inventory Handling"],
	[["Uniform", "Vest", "Backpack"], ["Uniform", "Vest", "Backpack"], 2],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	QSET(allowArsenalOverfilling),
	"CHECKBOX",
	["Allow Overfill On Container Switch (ACE Arsenal)", "If enabled the player's container (uniform, vest, backpack) in the arsenal will have its space increased when switching from a larger container to a smaller container to fit all items currently in the container."],
	["AET Loadout Handler", "Other"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;