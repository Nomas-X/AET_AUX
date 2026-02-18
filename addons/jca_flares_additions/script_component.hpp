#define COMPONENT jca_flares_additions

// This is being used for the Addon's Name and can be "My Addon Template Framework"
#define COMPONENT_BEAUTIFIED AET JCA Flares Additions


#include "\z\aet\addons\main\script_mod.hpp"
#include "\z\aet\addons\main\script_macros.hpp"
#define SKY_DEFINE_EFFECT(TYPE,COLOR) class AET_JCA_##TYPE##_Effect_##COLOR : JCA_##TYPE##_Effect_Base \
{ \
	class AET_JCA_##TYPE##_Light_##COLOR : JCA_##TYPE##_Light_Base \
	{ \
		type = QUOTE(AET_JCA_##TYPE##_Light_##COLOR); \
	}; \
	class AET_JCA_##TYPE##_Light_Sparks_##COLOR : JCA_##TYPE##_Light_Sparks_Base \
	{ \
		type = QUOTE(AET_JCA_HandFlare_Light_Sparks_##COLOR); \
	}; \
	class AET_JCA_##TYPE##_Effect_Smoke_##COLOR : JCA_##TYPE##_Effect_Smoke_Base \
	{ \
		type = QUOTE(AET_JCA_##TYPE##_Effect_Smoke_##COLOR); \
	}; \
	class AET_JCA_##TYPE##_Effect_Smoke_##COLOR##_UW : JCA_##TYPE##_Effect_Smoke_Base_UW \
	{ \
		type = QUOTE(AET_JCA_##TYPE##_Effect_Smoke_##COLOR##_UW); \
	}; \
	class AET_JCA_##TYPE##_Effect_Sparks_##COLOR : JCA_##TYPE##_Effect_Sparks_Base \
	{ \
		type = QUOTE(AET_JCA_HandFlare_Effect_Sparks_##COLOR); \
	}; \
	class AET_JCA_##TYPE##_Effect_Flame_##COLOR : JCA_##TYPE##_Effect_Flame_Base \
	{ \
		type = QUOTE(AET_JCA_HandFlare_Effect_Flame_##COLOR); \
	}; \
};

#define AET_DEFINE_CLOUDLET(R,G,B)
