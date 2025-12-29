/*---------------------------------------------------------------------------
The code in this file is executed every time the player respawns. If the respawnOnStart mission parameter is not -1 it will execute at the mission start as well.

For more info see https://community.bistudio.com/wiki/Event_Scripts#onPlayerRespawn.sqf

Parameters:
	0. OBJECT: The new unit of the player
---------------------------------------------------------------------------*/

params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];