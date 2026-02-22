// #include "script_component.hpp"

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

// White Flares
SKY_DEFINE_EFFECT(HandFlare,White)
SKY_DEFINE_EFFECT(SignalFlare,White)

// Purple Flares
SKY_DEFINE_EFFECT(HandFlare,Purple)
SKY_DEFINE_EFFECT(SignalFlare,Purple)

// Blue Flares
SKY_DEFINE_EFFECT(HandFlare,Blue)
SKY_DEFINE_EFFECT(SignalFlare,Blue)

// Yellow Flares
SKY_DEFINE_EFFECT(HandFlare,Yellow)
SKY_DEFINE_EFFECT(SignalFlare,Yellow)
