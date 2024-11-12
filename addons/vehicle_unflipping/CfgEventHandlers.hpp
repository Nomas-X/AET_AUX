
class Extended_PostInit_EventHandlers
{
    class vet_unflipping
    {
        serverInit = "call compile preprocessFileLineNumbers 'z\aet\addons\vehicle_unflipping\XEH_postInitServer.sqf'";
        clientInit = "call compile preprocessFileLineNumbers 'z\aet\addons\vehicle_unflipping\XEH_postInitClient.sqf'";
    };
};
class Extended_PreInit_EventHandlers
{
    class vet_unflipping
    {
        init = "call compile preprocessFileLineNumbers 'z\aet\addons\vehicle_unflipping\XEH_preInit.sqf'";
    };
};
