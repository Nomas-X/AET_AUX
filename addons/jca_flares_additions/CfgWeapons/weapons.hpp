class GrenadeLauncher;
class Throw: GrenadeLauncher
{
    muzzles[] += {
        SKY_HANDFLARE_MUZZLE(White),
        SKY_HANDFLARE_MUZZLE(Purple),
        SKY_HANDFLARE_MUZZLE(Blue),
        SKY_HANDFLARE_MUZZLE(Yellow),
        SKY_SIGNALFLARE_MUZZLE(White),
        SKY_SIGNALFLARE_MUZZLE(Purple),
        SKY_SIGNALFLARE_MUZZLE(Blue),
        SKY_SIGNALFLARE_MUZZLE(Yellow)
    };
    class ThrowMuzzle;
    // White Flares
    SKY_DEFINE_MUZZLES(White)
    // Purple Flares
    SKY_DEFINE_MUZZLES(Purple)
    // Blue Flares
    SKY_DEFINE_MUZZLES(Blue)
    // Yellow Flares
    SKY_DEFINE_MUZZLES(Yellow)
};
