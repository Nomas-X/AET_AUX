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
	class ADDON
	{
		class Init
		{
			file = PATH_TO_FUNC;

			class postInit { postInit = 1; };
		};
		class Players
		{
			file = PATH_TO_FUNC_SUB(players);
			
			class antiBounceSmokeGL {};
			class setFaces {};
		};
		class AI
		{
			file = PATH_TO_FUNC_SUB(ai);

			class disableLayerAI {};
			class enableLayerAI {};
			class lockAISeats {};
		};
		class Utility
		{
			file = PATH_TO_FUNC_SUB(utility);

			class compareAddonOptions {};
		};
	};
};

