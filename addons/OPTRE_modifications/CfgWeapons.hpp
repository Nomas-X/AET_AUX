class CfgWeapons
{
	class OPTRE_Biofoam;
	class OPTRE_Medigel;
	class CBA_MiscItem_ItemInfo;

	class GVAR(Emergency_MedKit) : OPTRE_Biofoam
	{
		scope=2;
		author="Nomas / Redwan S.";
		displayName = "[AET] Emergency Medkit";
		picture="\OPTRE_weapons\items\icons\medkit.paa";
		model="\OPTRE_Weapons\items\MedKit.p3d";
		class ItemInfo : CBA_MiscItem_ItemInfo
		{
			mass = 0.5;
		};
	};
	class GVAR(Biofoam) : OPTRE_Biofoam
	{
		scope=2;
		author="Nomas / Redwan S.";
		displayName="[AET] Biofoam Canister";
		picture="\OPTRE_weapons\items\icons\biofoam.paa";
		model="\OPTRE_Weapons\items\Biofoam.p3d";
		class ItemInfo : CBA_MiscItem_ItemInfo
		{
			mass = 0.5;
		};
	};
	class GVAR(Medigel) : OPTRE_Medigel
	{
		scope=2;
		author="Nomas / Redwan S.";
		displayName="[AET] Optican Medigel";
		picture=QPATHTOF(data\medigel_icon.paa);
		model="\OPTRE_Weapons\items\Medigel.p3d";
		class ItemInfo : CBA_MiscItem_ItemInfo
		{
			mass = 0.5;
		};
	};
};
