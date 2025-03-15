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

        requiredVersion=0.01;
        requiredAddons[]={"A3_3DEN"};
        units[]={};
        weapons[]={};
    };
};

#include "functions\_macros.inc"
#include "functions\_defines.inc"

class CfgFunctions {
    class CAU_UserInputMenus {
        class Functions {
            PATHTO_FNC(colorPicker);
            PATHTO_FNC(guiMessage);
            PATHTO_FNC(listBox);
            PATHTO_FNC(progressBar);
            PATHTO_FNC(slider);
            PATHTO_FNC(text);
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