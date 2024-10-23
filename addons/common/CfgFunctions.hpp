class CfgFunctions
{
	class HR
	{
		class Create
		{
			file = "z\aet_aux\addons\common\functions\create";
			
			class LGAirstrike {};
		};
		class Utility
		{
			file = "z\aet_aux\addons\common\functions\utility";

			class ValidateObjects {};
		};
	};
	class AET
	{
		class Players
		{
			file = "z\aet_aux\addons\common\functions\players";
			
			class basicEquipment {};
			class antiFlubber {};
			class importPlan {};
			class setFaces {};
			class startInVehicle {};
		};
		class AI
		{
			file = "z\aet_aux\addons\common\functions\ai";

			class disableLayerAI {};
			class enableLayerAI {};
		};
		class Utility
		{
			file = "z\aet_aux\addons\common\functions\utility";


			class markTriggersInLayer {};
			class markTriggersInMission {};
			class useRemoteReturn {};
			class getLayer {};
			class compareAddonOptions {};
		};
	};
};