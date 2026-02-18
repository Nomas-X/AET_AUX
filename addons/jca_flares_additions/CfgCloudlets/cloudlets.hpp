// Bases
class JCA_HandFlare_Effect_Smoke_Base;
class JCA_HandFlare_Effect_Smoke_Base_UW;
class JCA_SignalFlare_Effect_Smoke_Base;
class JCA_HandFlare_Effect_Sparks_Base;
class JCA_HandFlare_Effect_Flame_Base;

// White Flares
class AET_JCA_HandFlare_Effect_Smoke_White: JCA_HandFlare_Effect_Smoke_Base
{
    color[] =
    {
        {0.5, 0.5, 0.5, 0.2}
    };
};
class AET_JCA_HandFlare_Effect_Smoke_White_UW: JCA_HandFlare_Effect_Smoke_Base_UW
{
};

class AET_JCA_SignalFlare_Effect_Smoke_Base_UW: JCA_HandFlare_Effect_Smoke_Base_UW
{
};

class AET_JCA_SignalFlare_Effect_Smoke_White: JCA_SignalFlare_Effect_Smoke_Base
{
    color[] =
    {
        {0.5, 0.5, 0.5, 0.2}
    };
};
class AET_JCA_SignalFlare_Effect_Smoke_White_UW: AET_JCA_SignalFlare_Effect_Smoke_Base_UW
{
};

class AET_JCA_HandFlare_Effect_Sparks_White: JCA_HandFlare_Effect_Sparks_Base
{
    color[] =
    {
        {0.5, 0.5, 0.5, -6.5},
        {0.5, 0.5, 0.5, -6},
        {0.5, 0.5, 0.5, -5.5},
        {0.5, 0.5, 0.5, -4.5}
    };
    colorVar[] = {0.05, 0.05, 0.05, 5};
    colorCoef[] = {1, 1, 1, 1};
};

class AET_JCA_HandFlare_Effect_Flame_White: JCA_HandFlare_Effect_Flame_Base
{
    color[] =
    {
        {0.5, 0.5, 0.5, -80}
    };
};

// Purple Flares
class AET_JCA_HandFlare_Effect_Smoke_Purple: JCA_HandFlare_Effect_Smoke_Base
{
    color[] =
    {
        {0.4980392156862745, 0.06666666666666667, 0.8784313725490196, 0.2}
    };
};
class AET_JCA_HandFlare_Effect_Smoke_Purple_UW: JCA_HandFlare_Effect_Smoke_Base_UW
{
};

class AET_JCA_SignalFlare_Effect_Smoke_Purple: JCA_SignalFlare_Effect_Smoke_Base
{
    color[] =
    {
        {0.4980392156862745, 0.06666666666666667, 0.8784313725490196, 0.2}
    };
};
class AET_JCA_SignalFlare_Effect_Smoke_Purple_UW: AET_JCA_SignalFlare_Effect_Smoke_Base_UW
{
};

class AET_JCA_HandFlare_Effect_Sparks_Purple: JCA_HandFlare_Effect_Sparks_Base
{
    color[] =
    {
        {0.4980392156862745, 0.06666666666666667, 0.8784313725490196, -6.5},
        {0.4980392156862745, 0.06666666666666667, 0.8784313725490196, -6},
        {0.4980392156862745, 0.06666666666666667, 0.8784313725490196, -5.5},
        {0.4980392156862745, 0.06666666666666667, 0.8784313725490196, -4.5}
    };
    colorVar[] = {0.4980392156862745, 0.06666666666666667, 0.8784313725490196, 5};
    colorCoef[] = {1, 1, 1, 1};
};

class AET_JCA_HandFlare_Effect_Flame_Purple: JCA_HandFlare_Effect_Flame_Base
{
    color[] =
    {
        {0.4980392156862745, 0.06666666666666667, 0.8784313725490196, -80}
    };
};

// Blue Flares
class AET_JCA_HandFlare_Effect_Smoke_Blue: JCA_HandFlare_Effect_Smoke_Base
{
    color[] =
    {
        {0, 0, 1, 0.2}
    };
};
class AET_JCA_HandFlare_Effect_Smoke_Blue_UW: JCA_HandFlare_Effect_Smoke_Base_UW
{
};

class AET_JCA_SignalFlare_Effect_Smoke_Blue: JCA_SignalFlare_Effect_Smoke_Base
{
    color[] =
    {
        {0, 0, 1, 0.2}
    };
};
class AET_JCA_SignalFlare_Effect_Smoke_Blue_UW: AET_JCA_SignalFlare_Effect_Smoke_Base_UW
{
};

class AET_JCA_HandFlare_Effect_Sparks_Blue: JCA_HandFlare_Effect_Sparks_Base
{
    color[] =
    {
        {0, 0, 1, -6.5},
        {0, 0, 1, -6},
        {0, 0, 1, -5.5},
        {0, 0, 1, -4.5}
    };
    colorVar[] = {0, 0, 1, 5};
    colorCoef[] = {1, 1, 1, 1};
};

class AET_JCA_HandFlare_Effect_Flame_Blue: JCA_HandFlare_Effect_Flame_Base
{
    color[] =
    {
        {0, 0, 1, -80}
    };
};
