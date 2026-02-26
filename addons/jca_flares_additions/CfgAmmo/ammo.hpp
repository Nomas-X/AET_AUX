class GrenadeHand;
class JCA_GrenadeAmmo_HandFlare_Base: GrenadeHand
{
    ace_frag_skip=1;
    ace_frag_force=0;
};

// White Flares
class AET_JCA_GrenadeAmmo_HandFlare_White: JCA_GrenadeAmmo_HandFlare_Base
{
    model = "\z\aet\addons\jca_flares_additions\HandFlare_white_throw_F.p3d";
    smokeColor[] = {0.5, 0.5, 0.5, 1};
    effectsSmoke = "AET_JCA_HandFlare_Effect_White";
};
class AET_JCA_GrenadeAmmo_SignalFlare_Base: JCA_GrenadeAmmo_HandFlare_Base
{
    timeToLive = 360;
};
class AET_JCA_GrenadeAmmo_SignalFlare_White: AET_JCA_GrenadeAmmo_SignalFlare_Base
{
    model = "\z\aet\addons\jca_flares_additions\HandFlare_white_throw_F.p3d";
    smokeColor[] = {0.5, 0.5, 0.5, 1};
    effectsSmoke = "AET_JCA_SignalFlare_Effect_White";
};

// Purple Flares
class AET_JCA_GrenadeAmmo_HandFlare_Purple: JCA_GrenadeAmmo_HandFlare_Base
{
    model = "\z\aet\addons\jca_flares_additions\HandFlare_purple_throw_F.p3d";
    smokeColor[] = {0.4980392156862745, 0.06666666666666667, 0.8784313725490196, 1};
    effectsSmoke = "AET_JCA_HandFlare_Effect_Purple";
};
class AET_JCA_GrenadeAmmo_SignalFlare_Purple: AET_JCA_GrenadeAmmo_SignalFlare_Base
{
    model = "\z\aet\addons\jca_flares_additions\HandFlare_purple_throw_F.p3d";
    smokeColor[] = {0.4980392156862745, 0.06666666666666667, 0.8784313725490196, 1};
    effectsSmoke = "AET_JCA_SignalFlare_Effect_Purple";
};

// Blue Flares
class AET_JCA_GrenadeAmmo_HandFlare_Blue: JCA_GrenadeAmmo_HandFlare_Base
{
    model = "\z\aet\addons\jca_flares_additions\HandFlare_blue_throw_F.p3d";
    smokeColor[] = {0.1568627450980392, 0.32941176470588235, 0.7725490196078432, 1};
    effectsSmoke = "AET_JCA_HandFlare_Effect_Blue";
};
class AET_JCA_GrenadeAmmo_SignalFlare_Blue: AET_JCA_GrenadeAmmo_SignalFlare_Base
{
    model = "\z\aet\addons\jca_flares_additions\HandFlare_blue_throw_F.p3d";
    smokeColor[] = {0.1568627450980392, 0.32941176470588235, 0.7725490196078432, 1};
    effectsSmoke = "AET_JCA_SignalFlare_Effect_Blue";
};

// Yellow Flares
class AET_JCA_GrenadeAmmo_HandFlare_Yellow: JCA_GrenadeAmmo_HandFlare_Base
{
    model = "\z\aet\addons\jca_flares_additions\HandFlare_yellow_throw_F.p3d";
    smokeColor[] = {1, 1, 0, 1};
    effectsSmoke = "AET_JCA_HandFlare_Effect_Yellow";
};
class AET_JCA_GrenadeAmmo_SignalFlare_Yellow: AET_JCA_GrenadeAmmo_SignalFlare_Base
{
    model = "\z\aet\addons\jca_flares_additions\HandFlare_yellow_throw_F.p3d";
    smokeColor[] = {1, 1, 0, 1};
    effectsSmoke = "AET_JCA_SignalFlare_Effect_Yellow";
};
