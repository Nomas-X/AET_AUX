/*──────────────────────────────────────────────────────┐
│   Author: Connor                                      │
│   Steam:  https://steamcommunity.com/id/_connor       │
│   Github: https://github.com/ConnorAU                 │
│                                                       │
│   Please do not modify or remove this comment block   │
└──────────────────────────────────────────────────────*/

#define DIALOG_W 150
#define DIALOG_H 66

class CAU_UserInputMenus_displayColorPicker {
    idd = -1;
    onLoad = "uiNamespace setVariable ['CAU_UserInputMenus_displayColorPicker', _this#0];";

    class controlsBackground {
        class tiles: CAU_UserInputMenus_ctrlStaticBackgroundDisableTiles {};
        class background: CAU_UserInputMenus_ctrlStaticBackground {
            idc = QUOTE(IDC_BACKGROUND);

            x = QUOTE(CENTER_XA(DIALOG_W));
            y = QUOTE(CENTER_YA(DIALOG_H) + PX_HA(SIZE_M));
            w = QUOTE(PX_WA(DIALOG_W));
            h = QUOTE(PX_HA(DIALOG_H) - PX_HA(SIZE_M));
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
            y = QUOTE(CENTER_YA(DIALOG_H) + PX_HA(DIALOG_H) - PX_HA((SIZE_M + 2)));
            w = QUOTE(PX_WA(DIALOG_W));
            h = QUOTE(PX_HA((SIZE_M + 2)));
        };
        class buttonL: CAU_UserInputMenus_ctrlButton {
            idc = QUOTE(IDC_BUTTONL);
            x = QUOTE(CENTER_XA(DIALOG_W) + PX_WA(DIALOG_W) - PX_WA((((SIZE_M * 5) * 2))) - PX_WA(2));
            y = QUOTE(CENTER_YA(DIALOG_H) + PX_HA(DIALOG_H) - PX_HA((SIZE_M + 1)));
            w = QUOTE(PX_WA((SIZE_M * 5)));
            h = QUOTE(PX_HA(SIZE_M));
        };
        class buttonR: CAU_UserInputMenus_ctrlButton {
            idc = QUOTE(IDC_BUTTONR);
            x = QUOTE(CENTER_XA(DIALOG_W) + PX_WA(DIALOG_W) - PX_WA((SIZE_M * 5)) - PX_WA(1));
            y = QUOTE(CENTER_YA(DIALOG_H) + PX_HA(DIALOG_H) - PX_HA((SIZE_M + 1)));
            w = QUOTE(PX_WA((SIZE_M * 5)));
            h = QUOTE(PX_HA(SIZE_M));
        };

        // background right panel
        class editOverlay: CAU_UserInputMenus_ctrlStaticOverlay {
            x = QUOTE(CENTER_XA(DIALOG_W) + PX_WA(4) + ((PX_WA(VAL_CELL_SIZE)) * (VAL_CELL_COUNT + 1)));
            y = QUOTE(CENTER_YA(DIALOG_H) + PX_HA(SIZE_M) + PX_HA(2));
            w = QUOTE(PX_WA(DIALOG_W) - PX_WA(6) - ((PX_WA(VAL_CELL_SIZE)) * (VAL_CELL_COUNT + 1)));
            h = QUOTE(PX_HA(DIALOG_H) - PX_HA(SIZE_M) - PX_HA((SIZE_M + 2)) - PX_HA(4));
        };
        class editFrame: CAU_UserInputMenus_ctrlStaticFrame {
            x = QUOTE(CENTER_XA(DIALOG_W) + PX_WA(4) + ((PX_WA(VAL_CELL_SIZE)) * (VAL_CELL_COUNT + 1)));
            y = QUOTE(CENTER_YA(DIALOG_H) + PX_HA(SIZE_M) + PX_HA(2));
            w = QUOTE(PX_WA(DIALOG_W) - PX_WA(6) - ((PX_WA(VAL_CELL_SIZE)) * (VAL_CELL_COUNT + 1)));
            h = QUOTE(PX_HA(DIALOG_H) - PX_HA(SIZE_M) - PX_HA((SIZE_M + 2)) - PX_HA(4));
        };
    };
    class controls {

        // foreground left panel
        class gridGroup: CAU_UserInputMenus_ctrlControlsGroupNoScrollbars {
            idc = QUOTE(IDC_COLOR_GROUP_GRID);
            x = QUOTE(CENTER_XA(DIALOG_W) + PX_WA(2));
            y = QUOTE(CENTER_YA(DIALOG_H) + PX_HA(SIZE_M) + PX_HA(2));
            w = QUOTE((PX_WA(VAL_CELL_SIZE)) * (VAL_CELL_COUNT + 1));
            h = QUOTE((PX_HA(VAL_CELL_SIZE)) * VAL_CELL_COUNT);

            class controls {
                class gridBackground: CAU_UserInputMenus_ctrlStaticBackgroundDisableTiles {
                    x = 0;
                    y = 0;
                    w = QUOTE((PX_WA(VAL_CELL_SIZE)) * (VAL_CELL_COUNT + 1));
                    h = QUOTE((PX_HA(VAL_CELL_SIZE)) * VAL_CELL_COUNT);
                    tileW = QUOTE(((PX_WA(VAL_CELL_SIZE)) * (VAL_CELL_COUNT + 1)) * 2 / (32 * pixelW));
                    tileH = QUOTE(((PX_HA(VAL_CELL_SIZE)) * VAL_CELL_COUNT) * 2 / (32 * pixelH));
                    colorText[] = {1, 1, 1, 0.1};
                };
            };
        };

        // foreground right panel
        class infoGroup: CAU_UserInputMenus_ctrlControlsGroupNoScrollbars {
            idc = QUOTE(IDC_COLOR_GROUP_CTRLS);
            x = QUOTE(CENTER_XA(DIALOG_W) + PX_WA(4) + ((PX_WA(VAL_CELL_SIZE)) * (VAL_CELL_COUNT + 1)));
            y = QUOTE(CENTER_YA(DIALOG_H) + PX_HA(SIZE_M) + PX_HA(2));
            w = QUOTE(PX_WA(DIALOG_W) - PX_WA(6) - ((PX_WA(VAL_CELL_SIZE)) * (VAL_CELL_COUNT + 1)));
            h = QUOTE(PX_HA(DIALOG_H) - PX_HA(SIZE_M) - PX_HA((SIZE_M + 2)) - PX_HA(4));

            class controls {
                class modeToolbox: CAU_UserInputMenus_ctrlToolbox {
                    idc = QUOTE(IDC_COLOR_TOOLBOX_MODE);
                    columns = 3;
                    colorSelectedBg[] = {0.25, 0.25, 0.25, 1};
                    x = QUOTE(PX_WA(2));
                    y = QUOTE(PX_HA(2));
                    w = QUOTE(PX_WA(DIALOG_W) - PX_WA(10) - ((PX_WA(VAL_CELL_SIZE)) * (VAL_CELL_COUNT + 1)));
                    h = QUOTE(PX_HA(SIZE_XL));
                };

                class inputEditRed: CAU_UserInputMenus_ctrlEdit {
                    idc = QUOTE(IDC_COLOR_EDIT_INPUT_R);
                    style = 2;
                    colorText[] = {1, 0, 0, 1};
                    x = QUOTE(PX_WA(2));
                    y = QUOTE(PX_HA(4) + PX_HA(SIZE_XL));
                    w = QUOTE(((PX_WA(DIALOG_W) - PX_WA(10) - ((PX_WA(VAL_CELL_SIZE)) * (VAL_CELL_COUNT + 1))) / 4) - PX_WA(1));
                    h = QUOTE(PX_HA(SIZE_XL));
                };
                class inputEditGreen: inputEditRed {
                    idc = QUOTE(IDC_COLOR_EDIT_INPUT_G);
                    colorText[] = {0, 1, 0, 1};
                    x = QUOTE(PX_WA(2.25) + ((PX_WA(DIALOG_W) - PX_WA(10) - ((PX_WA(VAL_CELL_SIZE)) * (VAL_CELL_COUNT + 1))) / 4));
                };
                class inputEditBlue: inputEditRed {
                    idc = QUOTE(IDC_COLOR_EDIT_INPUT_B);
                    colorText[] = {0.26, 0.6, 1, 1};
                    x = QUOTE(PX_WA(2.5) + (((PX_WA(DIALOG_W) - PX_WA(10) - ((PX_WA(VAL_CELL_SIZE)) * (VAL_CELL_COUNT + 1))) / 4) * 2));
                };
                class inputEditAlpha: inputEditRed {
                    idc = QUOTE(IDC_COLOR_EDIT_INPUT_A);
                    colorText[] = {1, 1, 1, 1};
                    x = QUOTE(PX_WA(2.75) + (((PX_WA(DIALOG_W) - PX_WA(10) - ((PX_WA(VAL_CELL_SIZE)) * (VAL_CELL_COUNT + 1))) / 4) * 3));
                };

                class sliderRed: CAU_UserInputMenus_ctrlXSliderH {
                    idc = QUOTE(IDC_COLOR_SLIDER_R);
                    x = QUOTE(PX_WA(2));
                    y = QUOTE(PX_HA(6) + PX_HA((SIZE_XL * 2)));
                    w = QUOTE(PX_WA(DIALOG_W) - PX_WA(10) - ((PX_WA(VAL_CELL_SIZE)) * (VAL_CELL_COUNT + 1)));
                    h = QUOTE(PX_HA(SIZE_XL));
                    color[] = {1, 0, 0, 1};
                    colorActive[] = {1, 0, 0, 1};
                };
                class sliderGreen: sliderRed {
                    idc = QUOTE(IDC_COLOR_SLIDER_G);
                    y = QUOTE(PX_HA(8) + PX_HA((SIZE_XL * 3)));
                    color[] = {0, 1, 0, 1};
                    colorActive[] = {0, 1, 0, 1};
                };
                class sliderBlue: sliderRed {
                    idc = QUOTE(IDC_COLOR_SLIDER_B);
                    y = QUOTE(PX_HA(10) + PX_HA((SIZE_XL * 4)));
                    color[] = {0.26, 0.6, 1, 1};
                    colorActive[] = {0.26, 0.6, 1, 1};
                };
                class sliderAlpha: sliderRed {
                    idc = QUOTE(IDC_COLOR_SLIDER_A);
                    y = QUOTE(PX_HA(12) + PX_HA((SIZE_XL * 5)));
                    color[] = {1, 1, 1, 1};
                    colorActive[] = {1, 1, 1, 1};
                };
            };
        };
    };
};

#undef DIALOG_W
#undef DIALOG_H