// You don't need to worry about this stuff
class CfgPatches {
	class CAU_DiscordRichPresence {
		name="DiscordRichPresence";
		author="Connor";
		url="https://github.com/ConnorAU";

		requiredVersion=1.68;
		requiredAddons[]={"A3_Data_F"};
		units[]={};
		weapons[]={};
	};
};

#include "CfgDiscordRichPresence.hpp"

class CfgFunctions {
	class CAU_DiscordRichPresence {
		tag="DiscordRichPresence";
		class Scripts {
			file = "\z\aet\addons\discord_rich_presence";
			class init {
				preInit=1;
			};
			class update {};
		};
	};
};
class CfgMods {
	class Mod_Base;
	class CAU_DiscordRichPresence: Mod_Base {
		author="ConnorAU";
		name="Discord Rich Presence";
		nameShort="Discord Rich Presence";
		tooltip="Discord Rich Presence";
		tooltipOwned="Discord Rich Presence";
		overview="Show what you're playing in Arma 3 with Discord Rich Presence.";
		action="https://steamcommunity.com/sharedfiles/filedetails/?id=1493485159";

		hideName=0;
		hidePicture=0;
		dlcColor[]={0.45,0.54,0.85,1};

		logo="\z\aet\addons\discord_rich_presence\discord.paa";
		logoOver="\z\aet\addons\discord_rich_presence\discord.paa";
		logoSmall="\z\aet\addons\discord_rich_presence\discord.paa";
		picture="\z\aet\addons\discord_rich_presence\discord.paa";
	};
};
