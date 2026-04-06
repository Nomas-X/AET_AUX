class CfgVehicles
{
	class OPTRE_BiofoamItem;
	class OPTRE_MediGelItem;
	class GVAR(BiofoamItem) : OPTRE_BiofoamItem
	{
		scope=2;
		scopeCurator=2;
		scopeArsenal=2;
		displayName="[AET] Biofoam";
		author="Nomas / Redwan S.";
		vehicleClass="Items";
		class TransportItems
		{
			MACRO_ADDITEM(GVAR(BiofoamItem),1);
		};
		mass=2;
	};
	class GVAR(MediGelItem) : OPTRE_MediGelItem
	{
		scope=2;
		scopeCurator=2;
		scopeArsenal=2;
		displayName="[AET] Medigel";
		author="Nomas / Redwan S.";
		vehicleClass="Items";
		class TransportItems
		{
			MACRO_ADDITEM(GVAR(MediGelItem),1);
		};
		mass=2;
	};
};
