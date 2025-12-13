class GrenadeLauncher;
class Throw: GrenadeLauncher
{
    muzzles[] += {"AET_JCA_HandFlare_white_Muzzle", "AET_JCA_SignalFlare_white_Muzzle"};
    class ThrowMuzzle;
    class AET_JCA_HandFlare_white_Muzzle: ThrowMuzzle
    {
        magazines[] = {"AET_JCA_HandFlare_White"};
    };
    class AET_JCA_SignalFlare_white_Muzzle: ThrowMuzzle
    {
        magazines[] = {"AET_JCA_SignalFlare_White"};
    };
};

