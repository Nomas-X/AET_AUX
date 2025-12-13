class JCA_HandFlare_Effect_Smoke_Base;
class JCA_HandFlare_Effect_Smoke_Base_UW;
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

class JCA_SignalFlare_Effect_Smoke_Base;
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

class JCA_HandFlare_Effect_Sparks_Base;
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

class JCA_HandFlare_Effect_Flame_Base;
class AET_JCA_HandFlare_Effect_Flame_White: JCA_HandFlare_Effect_Flame_Base
{
    color[] =
    {
        {0.5, 0.5, 0.5, -80}
    };
};
