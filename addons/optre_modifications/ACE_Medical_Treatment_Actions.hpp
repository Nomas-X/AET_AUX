class ACE_Medical_Treatment_Actions
{
	class OPTRE_Medigel;
	class OPTRE_Biofoam;
	class GVAR(Medigel) : OPTRE_Medigel
	{
		displayName="Apply Medigel";
		displayNameProgress="Spreading Medigel";
		items[]=
		{
			QGVAR(Medigel)
		};
		category="bandage";
		callbackSuccess="AET_OPTRE_MODIFICATIONS_fnc_biomed";
	};
	class GVAR(Biofoam): OPTRE_Biofoam
	{
		displayName="Inject Biofoam";
		displayNameProgress="Injecting Biofoam";
		items[]=
		{
			QGVAR(Biofoam)
		};
		category="bandage";
		callbackSuccess="AET_OPTRE_MODIFICATIONS_fnc_biomed";
	};

	class GVAR(EmergencyMedKit) : OPTRE_Medigel
	{
		displayName="Emergency MedKit";
		displayNameProgress="Using Emergency Medkit";
		icon="";
		consumeItem=1;
		treatmentTime=10;
		medicRequired=0;
		allowSelfTreatment=0;
		category="advanced";
		items[]=
		{
			QGVAR(EmergencyMedKit)
		};
		callbackStart="";
		callbackSuccess="AET_OPTRE_MODIFICATIONS_fnc_medkit";
	};
};
