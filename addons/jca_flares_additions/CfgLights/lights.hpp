class JCA_HandFlare_Light_Base;
class JCA_SignalFlare_Light_Base;
class JCA_HandFlare_Light_Sparks_Base;

// White Flares
class AET_JCA_HandFlare_Light_White: JCA_HandFlare_Light_Base
{
    color[] = {1, 1, 1};
    diffuse[] = {1, 1, 1};
    ambient[] = {1, 1, 1};
    flareSize = 3.5;
};
class AET_JCA_SignalFlare_Light_White: JCA_SignalFlare_Light_Base
{
    color[] = {1, 1, 1};
    diffuse[] = {1, 1, 1};
    ambient[] = {1, 1, 1};
    flareSize = 2;
};
class AET_JCA_HandFlare_Light_Sparks_White: JCA_HandFlare_Light_Sparks_Base
{
    color[] = {1, 1, 1};
};

// Purple Flares
class AET_JCA_HandFlare_Light_Purple: JCA_HandFlare_Light_Base
{
    color[] = {0.4980392156862745, 0.06666666666666667, 0.8784313725490196};
    diffuse[] = {0.75, 0.25, 1};
    ambient[] = {0.75, 0.25, 1};
    flareSize = 3.5;
};
class AET_JCA_SignalFlare_Light_Purple: JCA_SignalFlare_Light_Base
{
    color[] = {0.4980392156862745, 0.06666666666666667, 0.8784313725490196};
    diffuse[] = {0.75, 0.25, 1};
    ambient[] = {0.75, 0.25, 1};
    flareSize = 2;
};
class AET_JCA_HandFlare_Light_Sparks_Purple: JCA_HandFlare_Light_Sparks_Base
{
    color[] = {0.4980392156862745, 0.06666666666666667, 0.8784313725490196};
};

// Blue Flares
class AET_JCA_HandFlare_Light_Blue: JCA_HandFlare_Light_Base
{
    color[] = {0.1568627450980392, 0.32941176470588235, 1};
    diffuse[] = {0.25, 0.25, 1};
    ambient[] = {0.25, 0.25, 1};
    flareSize = 3.5;
};
class AET_JCA_SignalFlare_Light_Blue: JCA_SignalFlare_Light_Base
{
    color[] = {0.1568627450980392, 0.32941176470588235, 1};
    diffuse[] = {0.25, 0.25, 1};
    ambient[] = {0.25, 0.25, 1};
    flareSize = 2;
};
class AET_JCA_HandFlare_Light_Sparks_Blue: JCA_HandFlare_Light_Sparks_Base
{
    color[] = {0.1568627450980392, 0.32941176470588235, 1};
};

// Yellow Flares
class AET_JCA_HandFlare_Light_Yellow: JCA_HandFlare_Light_Base
{
    color[] = {1, 1, 0};
    diffuse[] = {1, 1, 0.25};
    ambient[] = {1, 1, 0.25};
    flareSize = 3.5;
};
class AET_JCA_SignalFlare_Light_Yellow: JCA_SignalFlare_Light_Base
{
    color[] = {1, 1, 0};
    diffuse[] = {1, 1, 0.25};
    ambient[] = {1, 1, 0.25};
    flareSize = 2;
};
class AET_JCA_HandFlare_Light_Sparks_Yellow: JCA_HandFlare_Light_Sparks_Base
{
    color[] = {1, 1, 0.25};
};
