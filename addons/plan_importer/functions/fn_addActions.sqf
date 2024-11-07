#include "../script_component.hpp"

_importAction = ["AET_Import_Plan", "Import Plan", "\A3\ui_f\data\map\markers\military\marker_CA.paa", {["IMPORT"] call FUNC(isUserAllowed)}, {true}, {}, []] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions"], _importAction] call ace_interact_menu_fnc_addActionToObject;

_deleteAction = ["AET_Delete_Plan", "Delete Plan", "\A3\ui_f\data\map\groupicons\waypoint.paa", {["DELETE"] call FUNC(isUserAllowed)}, {true}, {}, []] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions"], _deleteAction] call ace_interact_menu_fnc_addActionToObject;