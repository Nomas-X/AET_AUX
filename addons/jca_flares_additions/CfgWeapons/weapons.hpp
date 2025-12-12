class GrenadeLauncher;
class Throw: GrenadeLauncher
{
    muzzles[] += {"JCA_HandFlare_white_Muzzle", "JCA_SignalFlare_white_Muzzle"};
    class ThrowMuzzle;
    class JCA_HandFlare_white_Muzzle: ThrowMuzzle
    {
        magazines[] = {"JCA_HandFlare_White"};
    };
    class JCA_SignalFlare_white_Muzzle: ThrowMuzzle
    {
        magazines[] = {"JCA_SignalFlare_White"};
    };
};

