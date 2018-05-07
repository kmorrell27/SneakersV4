/// @description Insert description here
// You can write your code in this editor

letters += spd;
textCurrent = string_copy(text, 0, floor(letters));

draw_set_font(fSign);

if (h == 0) {
	h = string_height(text);
}
w = string_width(textCurrent);

// Destroy when done
if (letters >= length && keyboard_check_pressed(vk_anykey)) {
	instance_destroy();
	with (oCamera) {
		follow = oPlayer;
	}
}
