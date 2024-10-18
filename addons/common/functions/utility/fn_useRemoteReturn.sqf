/*
Author: Leopard20
	Was provided to Nomas in the Arma 3 Discord by Leopard20.

Description:
    This function is used to get a return value from a function that needs to be executed on a different machine and then use that return value in a function executed locally.

Arguments:
	0. <Array> Includes parameters of the function that needs to be executed on the target machine
	1. <String> The function to be executed on the target machine
	2. <Array> Includes any parameters to be passed on to the callback
	3. <String> The function to be executed using the return from the first function

Return Value: <nil>

Example:
	[[_var1, _var2], "my_fn_remote", [_var3], "my_fnc_local"] remoteExec ["AET_fnc_useRemoteReturn", P_11];
	[[_layer], "AET_fnc_getLayer", [], "AET_fnc_markTriggersInLayer"] remoteExec ["AET_fnc_useRemoteReturn", 2];
*/

params ["_params", "_function", "_callbackParams", "_callback", ["_target", remoteExecutedOwner]];

_result = _params call (missionNamespace getVariable [_function, {}]);
[_callbackParams + [_result]] remoteExec [_callback, _target];