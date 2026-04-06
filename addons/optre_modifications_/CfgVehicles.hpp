class CfgVehicles
{
	class OPTRE_BiofoamItem;
	class OPTRE_MediGelItem;
	class OPTRE_MedKitItem;
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
			MACRO_ADDITEM(GVAR(Biofoam),1);
		};
		mass=0.7;
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
			MACRO_ADDITEM(GVAR(MediGel),1);
		};
		mass=0.7;
	};
	class GVAR(EmergencyMedKitItem) : OPTRE_MedKitItem
	{
		scope=2;
		scopeCurator=2;
		scopeArsenal=2;
		displayName="[AET] Emergency Medkit";
		author="Nomas / Redwan S.";
		vehicleClass="Items";
		class TransportItems
		{
			MACRO_ADDITEM(GVAR(EmergencyMedKit),1);
		};
		mass=30;	
	};
};
