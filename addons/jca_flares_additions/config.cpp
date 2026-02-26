#include "script_component.hpp"

class CfgPatches {
    class ADDON {

        // Meta information for editor
        name = ADDON_NAME;

        author = "$STR_aet_author";
        authors[] = {"Nomas / Redwan S. [AET]", "Sky [AET]"};

        url = "$STR_aet_URL";

        VERSION_CONFIG;

        // Addon Specific Information
        // Minimum compatible version. When the game's version is lower, pop-up warning will appear when launching the game.
        requiredVersion = 2.02;

        // Required addons, used for setting load order.
        // When any of the addons is missing, pop-up warning will appear when launching the game.
        requiredAddons[] = {QPVAR(main), "cba_main", "Weapons_F_JCA_HF_Explosives"};

        // Optional. If this is 1, if any of requiredAddons[] entry is missing in your game the entire config will be ignored and return no error (but in rpt) so useful to make a compat Mod (Since Arma 3 2.14)
        skipWhenMissingDependencies = 1;
        
        // List of objects (CfgVehicles classes) contained in the addon. Important also for Zeus content (units and groups)
        units[] = {};

        // List of weapons (CfgWeapons classes) contained in the addon.
        weapons[] = {};
    };

	class ADDON##_modules
	{
        name = QUOTE(PREFIX_BEAUTIFIED COMPONENT_BEAUTIFIED Modules);

        author = "$STR_aet_author";
        authors[] = {"Nomas / Redwan S. [AET]", "Sky [AET]"};

        url = "$STR_aet_URL";
        VERSION_CONFIG;

		addonRootClass = "A3_Modules_F_Curator";
		units[] = {
            "AET_JCA_ModuleHandFlare_White_F",
            "AET_JCA_ModuleHandFlare_Purple_F",
            "AET_JCA_ModuleHandFlare_Blue_F",
            "AET_JCA_ModuleHandFlare_Yellow_F",
            "AET_JCA_ModuleSignalFlare_White_F",
            "AET_JCA_ModuleSignalFlare_Purple_F",
            "AET_JCA_ModuleSignalFlare_Blue_F",
            "AET_JCA_ModuleSignalFlare_Yellow_F"
        };
		weapons[] = {};
        requiredVersion = 2.02;
        skipWhenMissingDependencies = 1;
        requiredAddons[] = {QPVAR(main), "cba_main", "Weapons_F_JCA_HF_Explosives", "A3_Modules_F_Curator"};

	};
};

#include "CfgCloudlets.hpp"
#include "CfgLights.hpp"
#include "effects.hpp"
#include "CfgAmmo.hpp"
#include "CfgMagazines.hpp"
#include "CfgWeapons.hpp"
#include "CfgVehicles.hpp"
