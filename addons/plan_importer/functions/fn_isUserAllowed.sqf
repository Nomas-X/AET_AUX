#include "../script_component.hpp"

params ["_checkType"];

if (SET(mode) == "SQUAD_LEADERS" && {leader player == player}) then {

	switch (_checkType) do {
		case "IMPORT": {
			if (SET(channelSelector) == -1) then {

				call FUNC(selectChannel);
			} else {
				
				[SET(channelSelector)] call FUNC(importPlan);
			};
		};
		case "DELETE": {
			call FUNC(deletePlan);
		};	
	};
} else {
	systemChat "Only group leaders can use this action";
};