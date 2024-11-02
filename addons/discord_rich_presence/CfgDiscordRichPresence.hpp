// Copy the following config into a description.ext or config.cpp and fill out the properties to your liking.
// The mod first looks for the config in the mission file. If not found, it checks the game config file. If still not found, it uses default values.
// This allows you to define rich presence settings for individual mission files and entire mods.

class CfgDiscordRichPresence {
	applicationID="1299438972686045225";                                                 // Provided by discord
	defaultDetails="";                                                                   // Upper text
	defaultState="";                                                                     // Lower text
	defaultLargeImageKey="antistasi_event_team";                                         // Large image
	defaultLargeImageText="";                                                            // Large image hover text
	defaultSmallImageKey="arma_3_logo";                                                  // Small image
	defaultSmallImageText="";                                                            // Small image hover text
	defaultButtons[]={"Our Discord", "https://discord.com/invite/QddpFx3AUJ"};   // Button texts and urls
	useTimeElapsed=1;                                                                    // Show time elapsed since the player connected (1 - true, 0 - false)
};
