// class JCA_HandFlare_Effect_Base;
class JCA_HandFlare_Effect_Base
{
	class JCA_HandFlare_Light_Base;
	class JCA_HandFlare_Light_Sparks_Base;
	class JCA_HandFlare_Effect_Smoke_Base;
	class JCA_HandFlare_Effect_Smoke_Base_UW;
	class JCA_HandFlare_Effect_Sparks_Base;
	class JCA_HandFlare_Effect_Flame_Base;
};

// class JCA_SignalFlare_Effect_Base;
class JCA_SignalFlare_Effect_Base: JCA_HandFlare_Effect_Base
{
	class JCA_SignalFlare_Light_Base;
	class JCA_SignalFlare_Light_Sparks_Base;
	class JCA_SignalFlare_Effect_Smoke_Base;
	class JCA_SignalFlare_Effect_Smoke_Base_UW;
	class JCA_SignalFlare_Effect_Sparks_Base;
	class JCA_SignalFlare_Effect_Flame_Base;
};

class AET_JCA_HandFlare_Effect_White: JCA_HandFlare_Effect_Base
{
	class AET_JCA_HandFlare_Light_White: JCA_HandFlare_Light_Base
	{
		type="AET_JCA_HandFlare_Light_White";
	};
	class AET_JCA_HandFlare_Light_Sparks_White: JCA_HandFlare_Light_Sparks_Base
	{
		type="AET_JCA_HandFlare_Light_Sparks_White";
	};
	class AET_JCA_HandFlare_Effect_Smoke_White: JCA_HandFlare_Effect_Smoke_Base
	{
		type="AET_JCA_HandFlare_Effect_Smoke_White";
	};
	class AET_JCA_HandFlare_Effect_Smoke_White_UW: JCA_HandFlare_Effect_Smoke_Base_UW
	{
		type="AET_JCA_HandFlare_Effect_Smoke_White_UW";
	};
	class AET_JCA_HandFlare_Effect_Sparks_White: JCA_HandFlare_Effect_Sparks_Base
	{
		type="AET_JCA_HandFlare_Effect_Sparks_White";
	};
	class AET_JCA_HandFlare_Effect_Flame_White: JCA_HandFlare_Effect_Flame_Base
	{
		type="AET_JCA_HandFlare_Effect_Flame_White";
	};
};

class AET_JCA_SignalFlare_Effect_White: JCA_SignalFlare_Effect_Base
{
	class AET_JCA_SignalFlare_Light_White: JCA_SignalFlare_Light_Base
	{
		type = "AET_JCA_SignalFlare_Light_White";
	};
	class AET_JCA_SignalFlare_Light_Sparks_White: JCA_SignalFlare_Light_Sparks_Base
	{
		type = "AET_JCA_HandFlare_Light_Sparks_White";
	};
	class AET_JCA_SignalFlare_Effect_Smoke_White: JCA_SignalFlare_Effect_Smoke_Base
	{
		type = "AET_JCA_SignalFlare_Effect_Smoke_White";
	};
	class AET_JCA_SignalFlare_Effect_Smoke_White_UW: JCA_SignalFlare_Effect_Smoke_Base_UW
	{
		type = "AET_JCA_SignalFlare_Effect_Smoke_White_UW";
	};
	class AET_JCA_SignalFlare_Effect_Sparks_White: JCA_SignalFlare_Effect_Sparks_Base
	{
		type = "AET_JCA_HandFlare_Effect_Sparks_White";
	};
	class AET_JCA_SignalFlare_Effect_Flame_White: JCA_SignalFlare_Effect_Flame_Base
	{
		type = "AET_JCA_HandFlare_Effect_Flame_White";
	};
};
