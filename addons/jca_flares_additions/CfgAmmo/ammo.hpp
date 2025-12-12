class JCA_GrenadeAmmo_HandFlare_Base;
class JCA_GrenadeAmmo_HandFlare_White: JCA_GrenadeAmmo_HandFlare_Base
{
    model = "\weapons_f_JCA_HF\Explosives\HandFlare_Red_throw_F";
    smokeColor[] = {0.5, 0.5, 0.5, 1};
    effectsSmoke = "JCA_HandFlare_Effect_White";
};
class JCA_GrenadeAmmo_SignalFlare_Base: JCA_GrenadeAmmo_HandFlare_Base
{
    timeToLive = 360;
};
class JCA_GrenadeAmmo_SignalFlare_White: JCA_GrenadeAmmo_SignalFlare_Base
{
    model = "\weapons_f_JCA_HF\Explosives\HandFlare_Red_throw_F";
    smokeColor[] = {0.5, 0.5, 0.5, 1};
    effectsSmoke = "JCA_SignalFlare_Effect_White";
};
