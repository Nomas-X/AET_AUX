class CfgFunctions
{
    class ADDON
    {
        class COMPONENT
        {

            file = PATH_TO_FUNC;

            class preInit { preInit = 1; };
            class postInit { postInit = 1; };
			
			class addItems {};

			class basicEquipment {};
			class containerBasedEquipment {};
			class traitBasedEquipment {};

        };
    };
	class ace_arsenal
	{
		class Misc
		{
			file = PATH_TO_FUNC;
			class onselchangedleft {};
		};
	};
};