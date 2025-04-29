class InventoryItem_Base_F;
class ItemCore;
class HeadgearItem: InventoryItem_Base_F{};
class HelmetBase: ItemCore
{
	class ItemInfo: HeadgearItem{};
};

class H_Beret_blk: HelmetBase
{
	class ItemInfo: ItemInfo{};
};

class H_Beret_02: H_Beret_blk
{
	class ItemInfo: ItemInfo{};
};

class a3a_g_beret_01: H_Beret_02
{
	author=AUTHOR;
	scope = 2;
	ScopeArsenal = 2;
	ScopeCurator = 0;
	displayName="$STR_A3A_G_BERET_01_DN";
	picture=PATH_TO_ADDON(headgear\beret_01\data\a3a_g_beret_01_01_ca.paa);
	hiddenSelectionsTextures[]={PATH_TO_ADDON(headgear\beret_01\data\a3a_g_beret_01_01.paa)};
	hiddenSelectionsMaterials[]={PATH_TO_ADDON(headgear\beret_01\data\a3a_g_beret_01.rvmat)};
};

class a3a_g_beret_02: H_Beret_02
{
	author=AUTHOR;
	scope = 2;
	ScopeArsenal = 2;
	ScopeCurator = 0;
	displayName="$STR_A3A_G_BERET_02_DN";
	picture=PATH_TO_ADDON(headgear\beret_01\data\a3a_g_beret_01_02_ca.paa);
	hiddenSelectionsTextures[]={PATH_TO_ADDON(headgear\beret_01\data\a3a_g_beret_01_02.paa)};
	hiddenSelectionsMaterials[]={PATH_TO_ADDON(headgear\beret_01\data\a3a_g_beret_01.rvmat)};
};

class a3a_g_beret_03: H_Beret_02
{
	author=AUTHOR;
	scope = 2;
	ScopeArsenal = 2;
	ScopeCurator = 0;
	displayName="$STR_A3A_G_BERET_03_DN";
	picture=PATH_TO_ADDON(headgear\beret_01\data\a3a_g_beret_01_03_ca.paa);
	hiddenSelectionsTextures[]={PATH_TO_ADDON(headgear\beret_01\data\a3a_g_beret_01_03.paa)};
	hiddenSelectionsMaterials[]={PATH_TO_ADDON(headgear\beret_01\data\a3a_g_beret_01.rvmat)};
};

class a3a_g_beret_04: H_Beret_02
{
	author=AUTHOR;
	scope = 2;
	ScopeArsenal = 2;
	ScopeCurator = 0;
	displayName="$STR_A3A_G_BERET_04_DN";
	picture=PATH_TO_ADDON(headgear\beret_01\data\a3a_g_beret_01_04_ca.paa);
	hiddenSelectionsTextures[]={PATH_TO_ADDON(headgear\beret_01\data\a3a_g_beret_01_04.paa)};
	hiddenSelectionsMaterials[]={PATH_TO_ADDON(headgear\beret_01\data\a3a_g_beret_01.rvmat)};
};