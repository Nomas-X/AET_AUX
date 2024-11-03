class CfgFunctions
{
	class HR
	{
		class Create
		{
			file = PATH_TO_FUNC_SUB(create);
			
			class LGAirstrike {};
		};
		class Utility
		{
			file = PATH_TO_FUNC_SUB(utility);

			class ValidateObjects {};
		};
	};
	class AET
	{
		class DOUBLES(COMPONENT,Players)
		{
			file = PATH_TO_FUNC_SUB(players);
			
			class basicEquipment {};
			class antiFlubber {};
			class importPlan {};
			class setFaces {};
			class startInVehicle {};
		};
		class DOUBLES(COMPONENT,AI)
		{
			file = PATH_TO_FUNC_SUB(ai);

			class disableLayerAI {};
			class enableLayerAI {};
		};
		class DOUBLES(COMPONENT,Utility)
		{
			file = PATH_TO_FUNC_SUB(utility);


			class markTriggersInLayer {};
			class markTriggersInMission {};
			class useRemoteReturn {};
			class getLayer {};
			class compareAddonOptions {};
		};
	};
};