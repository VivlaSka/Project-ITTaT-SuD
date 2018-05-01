/// @description Insert description here
// You can write your code in this editor
w = display_get_gui_width();
h = display_get_gui_height();
h_half = h / 2;
enum TRANS {
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}

mode = TRANS.INTRO;
percent = 1;
target = room;