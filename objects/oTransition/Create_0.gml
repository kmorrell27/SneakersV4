/// @description Variable setup

w = display_get_gui_width();
h = display_get_gui_height();

hHalf = h / 2;

enum TRANS_MODE {
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}

percent = 1;
target = room;
mode = TRANS_MODE.INTRO;