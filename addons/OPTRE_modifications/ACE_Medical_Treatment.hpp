class ACE_Medical_Treatment
{
	class Morphine;
	class OPTRE_Biofoam;
	class OPTRE_Medigel;
	class PlasmaIV;
	class Medication
	{
		painReduce=0;
		hrIncreaseLow[]={0,0};
		hrIncreaseNormal[]={0,0};
		hrIncreaseHigh[]={0,0};
		timeInSystem=120;
		timeTillMaxEffect=30;
		maxDose=4;
		onOverDose="";
		viscosityChange=0;
		class GVAR(EmergencyMedKit) : Morphine
		{
			painReduce=0;
			hrIncreaseLow[]={0};
			hrIncreaseNormal[]={0};
			hrIncreaseHigh[]={0};
			timeInSystem=0;
			timeTillMaxEffect=120;
			maxDose=12;
			incompatibleMedication[]={};
			viscosityChange=-1;
		};
	};
	class IV
	{
		class GVAR(EmergencyMedKit) : PlasmaIV
		{
			volume=1000;
		};
	};
	class Bandaging
	{
		class GVAR(Biofoam) : OPTRE_Biofoam
		{
			class plasma
			{
				effectiveness=5;
				reopeningChance=0;
				reopeningMinDelay=600;
				reopeningMaxDelay=900;
			};
			class plasmaMinor: plasma
			{
				effectiveness=5;
				reopeningChance=0;
				reopeningMinDelay=600;
				reopeningMaxDelay=900;
			};
			class plasmaMedium: plasma
			{
				effectiveness=3;
				reopeningChance=0;
				reopeningMinDelay=600;
				reopeningMaxDelay=900;
			};
			class plasmaLarge: plasma
			{
				effectiveness=2;
				reopeningChance=0;
				reopeningMinDelay=600;
				reopeningMaxDelay=900;
			};
			class Abrasion
			{
				effectiveness=1;
				reopeningChance=0;
				reopeningMinDelay=240;
				reopeningMaxDelay=480;
			};
			class AbrasionMinor: Abrasion
			{
			};
			class AbrasionMedium: Abrasion
			{
				effectiveness=0.5;
			};
			class AbrasionLarge: Abrasion
			{
				effectiveness=0.5;
			};
			class Avulsion: Abrasion
			{
				effectiveness=4;
				reopeningChance=0;
				reopeningMinDelay=300;
				reopeningMaxDelay=420;
			};
			class AvulsionMinor: Avulsion
			{
				effectiveness=3;
			};
			class AvulsionMedium: Avulsion
			{
				effectiveness=2;
			};
			class AvulsionLarge: Avulsion
			{
				effectiveness=1;
			};
			class Contusion: Abrasion
			{
				effectiveness=0;
				reopeningChance=0;
				reopeningMinDelay=0;
				reopeningMaxDelay=0;
			};
			class ContusionMinor: Contusion
			{
			};
			class ContusionMedium: Contusion
			{
			};
			class ContusionLarge: Contusion
			{
			};
			class Crush: Abrasion
			{
				effectiveness=2;
				reopeningChance=0;
				reopeningMinDelay=700;
				reopeningMaxDelay=1000;
			};
			class CrushMinor: Crush
			{
			};
			class CrushMedium: Crush
			{
				effectiveness=1.5;
			};
			class CrushLarge: Crush
			{
				effectiveness=1;
			};
			class Cut: Abrasion
			{
				effectiveness=1;
				reopeningChance=0;
				reopeningMinDelay=300;
				reopeningMaxDelay=480;
			};
			class CutMinor: Cut
			{
			};
			class CutMedium: Cut
			{
				effectiveness=0.5;
			};
			class CutLarge: Cut
			{
				effectiveness=0.5;
			};
			class Laceration: Abrasion
			{
				effectiveness=1;
				reopeningChance=0;
				reopeningMinDelay=600;
				reopeningMaxDelay=720;
			};
			class LacerationMinor: Laceration
			{
			};
			class LacerationMedium: Laceration
			{
				effectiveness=0.5;
			};
			class LacerationLarge: Laceration
			{
				effectiveness=0.5;
			};
			class velocityWound: Abrasion
			{
				effectiveness=3;
				reopeningChance=0;
				reopeningMinDelay=900;
				reopeningMaxDelay=1200;
			};
			class velocityWoundMinor: velocityWound
			{
			};
			class velocityWoundMedium: velocityWound
			{
				effectiveness=2;
			};
			class velocityWoundLarge: velocityWound
			{
				effectiveness=1;
			};
			class punctureWound: Abrasion
			{
				effectiveness=3;
				reopeningChance=0;
				reopeningMinDelay=900;
				reopeningMaxDelay=3000;
			};
			class punctureWoundMinor: punctureWound
			{
			};
			class punctureWoundMedium: punctureWound
			{
				effectiveness=2;
			};
			class punctureWoundLarge: punctureWound
			{
				effectiveness=1;
			};
		};
		class GVAR(Medigel) : OPTRE_Medigel
		{
			class plasma
			{
				effectiveness=3;
				reopeningChance=1;
				reopeningMinDelay=600;
				reopeningMaxDelay=900;
			};
			class plasmaMinor: plasma
			{
				effectiveness=3;
				reopeningChance=1;
				reopeningMinDelay=600;
				reopeningMaxDelay=900;
			};
			class plasmaMedium: plasma
			{
				effectiveness=2;
				reopeningChance=1;
				reopeningMinDelay=600;
				reopeningMaxDelay=900;
			};
			class plasmaLarge: plasma
			{
				effectiveness=1;
				reopeningChance=1;
				reopeningMinDelay=600;
				reopeningMaxDelay=900;
			};
			class Abrasion
			{
				effectiveness=4;
				reopeningChance=1;
				reopeningMinDelay=600;
				reopeningMaxDelay=900;
			};
			class AbrasionMinor: Abrasion
			{
			};
			class AbrasionMedium: Abrasion
			{
				effectiveness=3;
				reopeningChance=1;
			};
			class AbrasionLarge: Abrasion
			{
				effectiveness=2;
				reopeningChance=1;
			};
			class Avulsion: Abrasion
			{
				effectiveness=3;
				reopeningChance=1;
				reopeningMinDelay=300;
				reopeningMaxDelay=600;
			};
			class AvulsionMinor: Avulsion
			{
				effectiveness=2;
			};
			class AvulsionMedium: Avulsion
			{
				effectiveness=1.5;
			};
			class AvulsionLarge: Avulsion
			{
				effectiveness=1;
				reopeningChance=1;
			};
			class Contusion: Abrasion
			{
				effectiveness=2.5;
				reopeningChance=1;
				reopeningMinDelay=0;
				reopeningMaxDelay=0;
			};
			class ContusionMinor: Contusion
			{
			};
			class ContusionMedium: Contusion
			{
			};
			class ContusionLarge: Contusion
			{
				effectiveness=2;
			};
			class Crush: Abrasion
			{
				effectiveness=2;
				reopeningChance=1;
				reopeningMinDelay=0;
				reopeningMaxDelay=0;
			};
			class CrushMinor: Crush
			{
				reopeningChance=1;
			};
			class CrushMedium: Crush
			{
				effectiveness=1.5;
			};
			class CrushLarge: Crush
			{
				effectiveness=1;
				reopeningChance=1;
			};
			class Cut: Abrasion
			{
				effectiveness=3;
				reopeningChance=1;
				reopeningMinDelay=300;
				reopeningMaxDelay=600;
			};
			class CutMinor: Cut
			{
			};
			class CutMedium: Cut
			{
				effectiveness=2;
				reopeningChance=1;
			};
			class CutLarge: Cut
			{
				effectiveness=2;
				reopeningChance=1;
			};
			class Laceration: Abrasion
			{
				effectiveness=3;
				reopeningChance=1;
				reopeningMinDelay=300;
				reopeningMaxDelay=900;
			};
			class LacerationMinor: Laceration
			{
			};
			class LacerationMedium: Laceration
			{
				effectiveness=3;
			};
			class LacerationLarge: Laceration
			{
				effectiveness=2;
				reopeningChance=1;
			};
			class velocityWound: Abrasion
			{
				effectiveness=1;
				reopeningChance=1;
				reopeningMinDelay=120;
				reopeningMaxDelay=180;
			};
			class velocityWoundMinor: velocityWound
			{
			};
			class velocityWoundMedium: velocityWound
			{
				effectiveness=0.5;
			};
			class velocityWoundLarge: velocityWound
			{
				effectiveness=0.5;
			};
			class punctureWound: Abrasion
			{
				effectiveness=2;
				reopeningChance=1;
				reopeningMinDelay=120;
				reopeningMaxDelay=180;
			};
			class punctureWoundMinor: punctureWound
			{
			};
			class punctureWoundMedium: punctureWound
			{
				effectiveness=1;
			};
			class punctureWoundLarge: punctureWound
			{
				effectiveness=0.5;
			};
		};
		class GVAR(EmergencyMedKit) : OPTRE_Biofoam
		{
			class plasma
			{
				effectiveness=6;
				reopeningChance=0;
				reopeningMinDelay=600;
				reopeningMaxDelay=900;
			};
			class plasmaMinor: plasma
			{
				effectiveness=6;
				reopeningChance=0;
				reopeningMinDelay=600;
				reopeningMaxDelay=900;
			};
			class plasmaMedium: plasma
			{
				effectiveness=6;
				reopeningChance=0;
				reopeningMinDelay=600;
				reopeningMaxDelay=900;
			};
			class plasmaLarge: plasma
			{
				effectiveness=6;
				reopeningChance=0;
				reopeningMinDelay=600;
				reopeningMaxDelay=900;
			};
			class Abrasion
			{
				effectiveness=1000;
				reopeningChance=0;
				reopeningMinDelay=600;
				reopeningMaxDelay=900;
			};
			class AbrasionMinor: Abrasion
			{
			};
			class AbrasionMedium: Abrasion
			{
				effectiveness=1000;
				reopeningChance=0;
			};
			class AbrasionLarge: Abrasion
			{
				effectiveness=1000;
				reopeningChance=0;
			};
			class Avulsion: Abrasion
			{
				effectiveness=1000;
				reopeningChance=0;
				reopeningMinDelay=300;
				reopeningMaxDelay=600;
			};
			class AvulsionMinor: Avulsion
			{
				effectiveness=1000;
			};
			class AvulsionMedium: Avulsion
			{
				effectiveness=1000;
			};
			class AvulsionLarge: Avulsion
			{
				effectiveness=1000;
				reopeningChance=0;
			};
			class Contusion: Abrasion
			{
				effectiveness=1000;
				reopeningChance=0;
				reopeningMinDelay=0;
				reopeningMaxDelay=0;
			};
			class ContusionMinor: Contusion
			{
			};
			class ContusionMedium: Contusion
			{
			};
			class ContusionLarge: Contusion
			{
				effectiveness=1000;
			};
			class Crush: Abrasion
			{
				effectiveness=1000;
				reopeningChance=0;
				reopeningMinDelay=0;
				reopeningMaxDelay=0;
			};
			class CrushMinor: Crush
			{
				reopeningChance=0;
			};
			class CrushMedium: Crush
			{
				effectiveness=1000;
			};
			class CrushLarge: Crush
			{
				effectiveness=1000;
				reopeningChance=0;
			};
			class Cut: Abrasion
			{
				effectiveness=1000;
				reopeningChance=0;
				reopeningMinDelay=300;
				reopeningMaxDelay=600;
			};
			class CutMinor: Cut
			{
			};
			class CutMedium: Cut
			{
				effectiveness=1000;
				reopeningChance=0;
			};
			class CutLarge: Cut
			{
				effectiveness=1000;
				reopeningChance=0;
			};
			class Laceration: Abrasion
			{
				effectiveness=1000;
				reopeningChance=0;
				reopeningMinDelay=300;
				reopeningMaxDelay=900;
			};
			class LacerationMinor: Laceration
			{
			};
			class LacerationMedium: Laceration
			{
				effectiveness=1000;
			};
			class LacerationLarge: Laceration
			{
				effectiveness=1000;
				reopeningChance=0;
			};
			class velocityWound: Abrasion
			{
				effectiveness=1000;
				reopeningChance=0;
				reopeningMinDelay=120;
				reopeningMaxDelay=180;
			};
			class velocityWoundMinor: velocityWound
			{
			};
			class velocityWoundMedium: velocityWound
			{
				effectiveness=1000;
			};
			class velocityWoundLarge: velocityWound
			{
				effectiveness=1000;
			};
			class punctureWound: Abrasion
			{
				effectiveness=1000;
				reopeningChance=0;
				reopeningMinDelay=120;
				reopeningMaxDelay=180;
			};
			class punctureWoundMinor: punctureWound
			{
			};
			class punctureWoundMedium: punctureWound
			{
				effectiveness=1000;
			};
			class punctureWoundLarge: punctureWound
			{
				effectiveness=1000;
			};
		};
	};
};
