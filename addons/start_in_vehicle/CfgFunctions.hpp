class CfgFunctions
{
    class ADDON
    {
        class COMPONENT
        {

            file = PATH_TO_FUNC;

			class preInit { preInit = 1; };
			
			class moveInto {};

        };

        class QUEUE
        {
            file = PATH_TO_FUNC_SUB(queue);

			class request_add {};
            class request_iterate {};
        };
    };
};