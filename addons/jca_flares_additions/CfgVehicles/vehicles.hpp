// Modules here
class Logic;
class Module_F: Logic
{
    class ModuleDescription
    {
        class AnyPlayer;
    };
};

class JCA_ModuleHandFlare_F: Module_F
{
    class Arguments
    {
        class Type
        {
            class values
            {
                class Flare_White
                {
                    name = "White Flare";
                    value = "AET_JCA_GrenadeAmmo_HandFlare_White";
                };
                class Flare_Purple
                {
                    name = "Purple Flare";
                    value = "AET_JCA_GrenadeAmmo_HandFlare_Purple";
                };
                class Flare_Blue
                {
                    name = "Blue Flare";
                    value = "AET_JCA_GrenadeAmmo_HandFlare_Blue";
                };
                class Flare_Yellow
                {
                    name = "Yellow Flare";
                    value = "AET_JCA_GrenadeAmmo_HandFlare_Yellow";
                };
            };
        };
    };
};

class JCA_ModuleSignalFlare_F: JCA_ModuleHandFlare_F
{
    class Arguments: Arguments
    {
        class Type: Type
        {
            class values: values
            {
                class Flare_White
                {
                    name = "White Flare";
                    value = "AET_JCA_GrenadeAmmo_SignalFlare_White";
                };
                class Flare_Purple
                {
                    name = "Purple Flare";
                    value = "AET_JCA_GrenadeAmmo_SignalFlare_Purple";
                };
                class Flare_Blue
                {
                    name = "Blue Flare";
                    value = "AET_JCA_GrenadeAmmo_SignalFlare_Blue";
                };
                class Flare_Yellow
                {
                    name = "Yellow Flare";
                    value = "AET_JCA_GrenadeAmmo_SignalFlare_Yellow";
                };
            };
        };
    };
};

class AET_JCA_ModuleHandFlare_White_F: JCA_ModuleHandFlare_F
{
    author = "Sky";
    scope = 1;
    scopeCurator = 2;
    category = "JCA_Handflares";
    displayName = "Hand flare (White)";
    portrait = "\z\aet\addons\jca_flares_additions\data\UI\portraitHandflareWhite_ca.paa";
    ammo = "AET_JCA_GrenadeAmmo_HandFlare_White";
    delete Arguments;
};
class AET_JCA_ModuleHandFlare_Purple_F: AET_JCA_ModuleHandFlare_White_F
{
    author = "Sky";
    displayName = "Hand flare (Purple)";
    portrait = "\z\aet\addons\jca_flares_additions\data\UI\portraitHandflarePurple_ca.paa";
    ammo = "AET_JCA_GrenadeAmmo_HandFlare_Purple";
};
class AET_JCA_ModuleHandFlare_Blue_F: AET_JCA_ModuleHandFlare_White_F
{
    author = "Sky";
    displayName = "Hand flare (Blue)";
    portrait = "\z\aet\addons\jca_flares_additions\data\UI\portraitHandflareBlue_ca.paa";
    ammo = "AET_JCA_GrenadeAmmo_HandFlare_Blue";
};
class AET_JCA_ModuleHandFlare_Yellow_F: AET_JCA_ModuleHandFlare_White_F
{
    author = "Sky";
    displayName = "Hand flare (Yellow)";
    portrait = "\z\aet\addons\jca_flares_additions\data\UI\portraitHandflareYellow_ca.paa";
    ammo = "AET_JCA_GrenadeAmmo_HandFlare_Yellow";
};

class AET_JCA_ModuleSignalFlare_White_F: JCA_ModuleSignalFlare_F
{
    author = "Sky";
    scope = 1;
    scopeCurator = 2;
    category = "JCA_Handflares";
    displayName = "Signal flare (White)";
    portrait = "\z\aet\addons\jca_flares_additions\data\UI\portraitHandflareWhite_ca.paa";
    ammo = "AET_JCA_GrenadeAmmo_SignalFlare_White";
    delete Arguments;
};
class AET_JCA_ModuleSignalFlare_Purple_F: AET_JCA_ModuleSignalFlare_White_F
{
    author = "Sky";
    displayName = "Signal flare (Purple)";
    portrait = "\z\aet\addons\jca_flares_additions\data\UI\portraitHandflarePurple_ca.paa";
    ammo = "AET_JCA_GrenadeAmmo_SignalFlare_Purple";
};
class AET_JCA_ModuleSignalFlare_Blue_F: AET_JCA_ModuleSignalFlare_White_F
{
    author = "Sky";
    displayName = "Signal flare (Blue)";
    portrait = "\z\aet\addons\jca_flares_additions\data\UI\portraitHandflareBlue_ca.paa";
    ammo = "AET_JCA_GrenadeAmmo_SignalFlare_Blue";
};
class AET_JCA_ModuleSignalFlare_Yellow_F: AET_JCA_ModuleSignalFlare_White_F
{
    author = "Sky";
    displayName = "Signal flare (Yellow)";
    portrait = "\z\aet\addons\jca_flares_additions\data\UI\portraitHandflareYellow_ca.paa";
    ammo = "AET_JCA_GrenadeAmmo_SignalFlare_Yellow";
};
