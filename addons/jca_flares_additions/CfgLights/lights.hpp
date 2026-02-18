class JCA_HandFlare_Light_Base;
class JCA_SignalFlare_Light_Base;
class JCA_HandFlare_Light_Sparks_Base;

// White Flares
class AET_JCA_HandFlare_Light_White: JCA_HandFlare_Light_Base
{
    color[] = {1, 1, 1};
    diffuse[] = {2, 2, 2};
    ambient[] = {2, 2, 2};
    flareSize = 3.5;
};

class AET_JCA_SignalFlare_Light_White: JCA_SignalFlare_Light_Base
{
    color[] = {1, 1, 1};
    diffuse[] = {2, 2, 2};
    ambient[] = {2, 2, 2};
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
    diffuse[] = {1.5, 1, 2};
    ambient[] = {1.5, 1, 2};
    flareSize = 3.5;
};

class AET_JCA_SignalFlare_Light_Purple: JCA_SignalFlare_Light_Base
{
    color[] = {0.4980392156862745, 0.06666666666666667, 0.8784313725490196};
    diffuse[] = {1.5, 1, 2};
    ambient[] = {1.5, 1, 2};
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
    diffuse[] = {1, 1, 2};
    ambient[] = {1, 1, 2};
    flareSize = 3.5;
};

class AET_JCA_SignalFlare_Light_Blue: JCA_SignalFlare_Light_Base
{
    color[] = {0.1568627450980392, 0.32941176470588235, 1};
    diffuse[] = {1, 1, 2};
    ambient[] = {1, 1, 2};
    flareSize = 2;
};

class AET_JCA_HandFlare_Light_Sparks_Blue: JCA_HandFlare_Light_Sparks_Base
{
    color[] = {0, 0, 1};
};
