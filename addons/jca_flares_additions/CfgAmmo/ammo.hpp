class JCA_GrenadeAmmo_HandFlare_Base;
class AET_JCA_GrenadeAmmo_HandFlare_White: JCA_GrenadeAmmo_HandFlare_Base
{
    model = "\weapons_f_JCA_HF\Explosives\HandFlare_Red_throw_F.p3d";
    smokeColor[] = {0.5, 0.5, 0.5, 1};
    effectsSmoke = "AET_JCA_HandFlare_Effect_White";
};
class AET_JCA_GrenadeAmmo_SignalFlare_Base: JCA_GrenadeAmmo_HandFlare_Base
{
    timeToLive = 360;
};
class AET_JCA_GrenadeAmmo_SignalFlare_White: AET_JCA_GrenadeAmmo_SignalFlare_Base
{
    model = "\weapons_f_JCA_HF\Explosives\HandFlare_Red_throw_F.p3d";
    smokeColor[] = {0.5, 0.5, 0.5, 1};
    effectsSmoke = "AET_JCA_SignalFlare_Effect_White";
};
