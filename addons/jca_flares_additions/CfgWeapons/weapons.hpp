class GrenadeLauncher;
class Throw: GrenadeLauncher
{
    muzzles[] += {"AET_JCA_HandFlare_White_Muzzle", "AET_JCA_SignalFlare_White_Muzzle", "AET_JCA_HandFlare_Purple_Muzzle", "AET_JCA_SignalFlare_Purple_Muzzle", "AET_JCA_HandFlare_Blue_Muzzle", "AET_JCA_SignalFlare_Blue_Muzzle"};
    class ThrowMuzzle;
    // White Flares
    class AET_JCA_HandFlare_White_Muzzle: ThrowMuzzle
    {
        magazines[] = {"AET_JCA_HandFlare_White"};
    };
    class AET_JCA_SignalFlare_White_Muzzle: ThrowMuzzle
    {
        magazines[] = {"AET_JCA_SignalFlare_White"};
    };
    // Purple Flares
    class AET_JCA_HandFlare_Purple_Muzzle: ThrowMuzzle
    {
        magazines[] = {"AET_JCA_HandFlare_Purple"};
    };
    class AET_JCA_SignalFlare_Purple_Muzzle: ThrowMuzzle
    {
        magazines[] = {"AET_JCA_SignalFlare_Purple"};
    };
    // Blue Flares
    class AET_JCA_HandFlare_Blue_Muzzle: ThrowMuzzle
    {
        magazines[] = {"AET_JCA_HandFlare_Blue"};
    };
    class AET_JCA_SignalFlare_Blue_Muzzle: ThrowMuzzle
    {
        magazines[] = {"AET_JCA_SignalFlare_Blue"};
    };
};
