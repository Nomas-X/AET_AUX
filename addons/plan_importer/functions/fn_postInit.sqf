#include "../script_component.hpp"
/*
Author: Redwan S. / Nomas

Description:
    This function is used post initialization when the player joins to decide add the the "Import Plan" and "Delete Plan" actions if the CBA setting allows it. Additionally it adds the event handler that will remove or add the actions in case the main setting of the addon is turned off or on.

Arguments:
	N/A

Return Value:
	<Nil>

Example:
	[] call AET_plan_importer_fnc_postInit;
*/

private _code = {
	if (hasInterface) then {

		player createDiaryRecord ["AntistasiEventTeamActions", ["Plan Importer", "
			How to import your plan into Arma 3 <t colorLink='#0000ff'><a href='https://maps.plan-ops.fr'>PLANOPS</a></t>:<br/><br/>
			
			1. Open your plan on the <t colorLink='#0000ff'><a href='https://maps.plan-ops.fr'>PLANOPS</a></t> website.<br/><br/>

			2. Click the Share button on the right side of the map.<br/><br/>
			
			3. Select Export to Arma 3 from the options.<br/><br/>
			
			4. Click Copy to copy the exported data.<br/><br/>
			
			5. In Arma 3, click ""Import Plan"" and paste the copied contents into the prompt box.<br/><br/>

			<execute expression='
				if ([] call " + QFUNC(useActionCondition) + ") then {
					[] call " + QFUNC(selectChannel) + ";
				} else {
					systemChat ""You do not have permission to use this action!"";
				};
			'>Import Plan!</execute><br/><br/>
			
			<execute expression='
				if ([] call " + QFUNC(useActionCondition) + ") then {
				[side player] call " + QFUNC(deletePlan) + ";
				} else {
					systemChat ""You do not have permission to use this action!"";
				};
			'>Delete Plan!</execute>
		"]];
	};
};

if (missionNamespace getVariable ["cba_settings_ready",false]) then _code else { ["CBA_settingsInitialized",_code,[]] call CBA_fnc_addEventHandler; };