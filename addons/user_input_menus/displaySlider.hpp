/*──────────────────────────────────────────────────────┐
│   Author: Connor                                      │
│   Steam:  https://steamcommunity.com/id/_connor       │
│   Github: https://github.com/ConnorAU                 │
│                                                       │
│   Please do not modify or remove this comment block   │
└──────────────────────────────────────────────────────*/

#define DIALOG_W 110
#define DIALOG_H (SIZE_M + 2 + SIZE_M + 2 + SIZE_XXL)

class CAU_UserInputMenus_displaySlider {
    idd = -1;
    onLoad = "uiNamespace setVariable ['CAU_UserInputMenus_displaySlider', _this#0];";

    class controlsBackground {
        class tiles: CAU_UserInputMenus_ctrlStaticBackgroundDisableTiles {};
        class background: CAU_UserInputMenus_ctrlStaticBackground {
            idc = QUOTE(IDC_BACKGROUND);

            x = QUOTE(CENTER_XA(DIALOG_W));
            y = QUOTE(CENTER_YA(DIALOG_H));
            w = QUOTE(PX_WA(DIALOG_W));
            h = QUOTE(PX_HA(DIALOG_H));
        };
        class title: CAU_UserInputMenus_ctrlStaticTitle {
            idc = QUOTE(IDC_TITLE);

            x = QUOTE(CENTER_XA(DIALOG_W));
            y = QUOTE(CENTER_YA(DIALOG_H));
            w = QUOTE(PX_WA(DIALOG_W));
            h = QUOTE(PX_HA(SIZE_M));
        };
        class footer: CAU_UserInputMenus_ctrlStaticFooter {
            idc = QUOTE(IDC_FOOTER);

            x = QUOTE(CENTER_XA(DIALOG_W));
            y = QUOTE(CENTER_YA(DIALOG_H) + PX_HA(DIALOG_H) - PX_HA(SIZE_XXL));
            w = QUOTE(PX_WA(DIALOG_W));
            h = QUOTE(PX_HA(SIZE_XXL));
        };
    };
    class controls {
        class text: CAU_UserInputMenus_ctrlXSliderH {
            idc = QUOTE(IDC_INPUT);
            size = QUOTE(PX_HA(SIZE_M));

            x = QUOTE(CENTER_XA(DIALOG_W) + PX_WA(2));
            y = QUOTE(CENTER_YA(DIALOG_H) + PX_HA(SIZE_M) + PX_HA(2));
            w = QUOTE(PX_WA(DIALOG_W) - PX_WA(4));
            h = QUOTE(PX_HA(SIZE_M));
        };
        class buttonL: CAU_UserInputMenus_ctrlButton {
            idc = QUOTE(IDC_BUTTONL);

            x = QUOTE(CENTER_XA(DIALOG_W) + PX_WA(DIALOG_W) - PX_WA(((SIZE_M * 6) * 2)) - PX_WA(2));
            y = QUOTE(CENTER_YA(DIALOG_H) + PX_HA(DIALOG_H) - PX_HA(SIZE_M) - PX_HA(1));
            w = QUOTE(PX_WA((SIZE_M * 6)));
            h = QUOTE(PX_HA(SIZE_M));
        };
        class buttonR: buttonL {
        idc = QUOTE(IDC_BUTTONR);

        x = QUOTE(CENTER_XA(DIALOG_W) + PX_WA(DIALOG_W) - PX_WA((SIZE_M * 6)) - PX_WA(1));
        };
    };
};

#undef DIALOG_W
#undef DIALOG_H