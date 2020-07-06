#include <sourcemod>
#include <sdktools>

#pragma semicolon 1
#pragma newdecls required

public Plugin myinfo = {
	name = "Stuck",
	author = "Clarkey",
	description = "Slays players that are stuck.",
	version = "1.0",
	url = "http://finalrespawn.com"
};

public void OnPluginStart()
{
	RegConsoleCmd("sm_r", Command_Stuck, "[Stuck] Typing !r while stuck will force your death.");
	RegConsoleCmd("sm_stuck", Command_Stuck, "[Stuck] Typing !stuck while stuck will force your death.");
}

public Action Command_Stuck(int client, int args)
{
	ForcePlayerSuicide(client);
}