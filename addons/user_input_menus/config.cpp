/*──────────────────────────────────────────────────────┐
│   Author: Connor                                      │
│   Steam:  https://steamcommunity.com/id/_connor       │
│   Github: https://github.com/ConnorAU                 │
│                                                       │
│   Please do not modify or remove this comment block   │
└──────────────────────────────────────────────────────*/

class CfgPatches {
    class CAU_UserInputMenus {
        name="UserInputMenus";
        author="ConnorAU";
        url="https://github.com/ConnorAU/A3UserInputMenus";
        requiredVersion=2.16;
        requiredAddons[]={"A3_3DEN"};
        units[]={};
        weapons[]={};
    };
};

#include "functions\script_component.hpp"
#include "functions\_macros.inc"
#include "functions\_defines.inc"

class CfgFunctions {
    class CAU_UserInputMenus {
        class Functions {
            UIM_PATHTO_FNC(colorPicker);
            UIM_PATHTO_FNC(guiMessage);
            UIM_PATHTO_FNC(listBox);
            UIM_PATHTO_FNC(progressBar);
            UIM_PATHTO_FNC(slider);
            UIM_PATHTO_FNC(text);
        };
    };
};

#include "controls.hpp"
#include "displayColorPicker.hpp"
#include "displayGuiMessage.hpp"
#include "displayListbox.hpp"
#include "displayListboxMulti.hpp"
#include "displayProgressBar.hpp"
#include "displaySlider.hpp"
#include "displayText.hpp"
#include "displayTextMulti.hpp" 