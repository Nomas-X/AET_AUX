/*---------------------------------------------------------------------------
The code in this file is executed only on server when mission is started.
In most cases global functions should be called here and not in the objects init field.

For more info see https://community.bistudio.com/wiki/Event_Scripts#initServer.sqf
---------------------------------------------------------------------------*/

/*---------------------------------------------------------------------------
Example for executing commands on layer entities.
-----------------------------------------------------------------------------
    private _layer_1 = (getMissionLayerEntities "Town") select 0;
    {
        _x allowDamage false;
    } forEach _layer_1;
*/

/*---------------------------------------------------------------------------
Example of executing a command on every element in an array.
_x is the element of an array.
-----------------------------------------------------------------------------
    _array = [heli_1, heli_2, heli_3];
    {
        _x allowDamage true;
    } forEach _array;
*/