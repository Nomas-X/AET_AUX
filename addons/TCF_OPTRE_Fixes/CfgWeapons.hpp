class CowsSlot;
class PointerSlot;
class UnderBarrelSlot;
class WeaponSlotsInfo;
class asdg_MuzzleSlot_762
{
	linkProxy="\a3\data_f\proxies\weapon_slots\MUZZLE";
	displayName="$str_a3_cfgweapons_abr_base_f_weaponslotsinfo_muzzleslot0";
	iconPicture="\a3\weapons_f\Data\ui\attachment_muzzle";
	class compatibleItems
	{
		muzzle_snds_B=1;
		muzzle_snds_B_khk_F=1;
		muzzle_snds_B_snd_F=1;
		muzzle_snds_B_arid_F=1;
		muzzle_snds_B_lush_F=1;
		optre_m6_silencer=1;
		OPTRE_M6C_compensator=0;
		OPTRE_M12_Suppressor=1;
		optre_m7_silencer=1;
		optre_ma5suppressor=1;
		OPTRE_M393_Suppressor=1;
		OPTRE_MA37KSuppressor=1;
		OPTRE_SRS99D_Suppressor=1;
	};
};

class cfgWeapons
{
	class OPTRE_MA5CGL;
	class OPTRE_MA37GL: OPTRE_MA5CGL
	{
		dlc="TCF";
		author="Baseplate & Hivemind";
		scope=2;
		scopeArsenal=2;
		displayName="MA37 + M301 GL Assault Rifle";
		class WeaponSlotsInfo: WeaponSlotsInfo
		{
			mass=100;
			class MuzzleSlot: asdg_MuzzleSlot_762
			{
				iconPosition[]={0,0.40000001};
				iconScale=0.2;
			};
			class CowsSlot: CowsSlot
			{
				compatibleitems[]=
				{
					"OPTRE_MA37_Smartlink_Scope"
				};
			};
			class PointerSlot: PointerSlot
			{
				compatibleitems[]={};
			};
			class UnderBarrelSlot: UnderBarrelSlot
			{
				compatibleitems[]={};
			};
		};
	};
	class OPTRE_MA37BGL: OPTRE_MA37GL
	{
		dlc="TCF";
		author="Baseplate & Hivemind";
		baseWeapon="OPTRE_MA37BGL";
		scope=2;
		scopeArsenal=2;
		model="\OPTRE_Weapons\AR\MA37GL.p3d";
		displayName="MA37B + M301 GL Assault Rifle";
		hiddenSelections[]=
		{
			"camo",
			"camo1",
			"camo2",
			"camo3",
			"camo_reticle"
		};
		hiddenSelectionsTextures[]=
		{
			"optre_weapons\ar\data\ma37b_co.paa",
			"optre_weapons\ar\data\ammocounter37b_co.paa",
			"optre_weapons\ar\data\smartlink_co.paa",
			"optre_weapons\ar\data\cover_co.paa",
			"optre_weapons\ar\data\r_ar_ca.paa"
		};
		magazines[]={};
		magazineWell[]=
		{
			"OPTRE_Magwell_MA5C"
		};
		class WeaponSlotsInfo: WeaponSlotsInfo
		{
			mass=100;
			class MuzzleSlot: asdg_MuzzleSlot_762
			{
				iconPosition[]={0,0.40000001};
				iconScale=0.2;
			};
			class CowsSlot: CowsSlot
			{
				compatibleitems[]=
				{
					"OPTRE_MA37_Smartlink_Scope"
				};
			};
			class PointerSlot: PointerSlot
			{
				compatibleitems[]={};
			};
			class UnderBarrelSlot: UnderBarrelSlot
			{
				compatibleitems[]={};
			};
		};
	}; 
};

