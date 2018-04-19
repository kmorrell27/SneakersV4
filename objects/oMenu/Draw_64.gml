/// @description Insert description here
// You can write your code in this editor

draw_set_font(fMenu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for (var i = 0; i < menuLength; i++) {
	var offset = 2;
	var txt = menu[i];
	var color;
	if (menuCursor == i) {
		txt = string_insert("> ", txt, 0);
		color = c_white;
	} else {
		color = c_gray;
	}
	var ySpaced = menuY - (menuItemHeight * (i * 1.5));
	
	draw_set_color(c_black);
	draw_text(menuX - offset, ySpaced, txt);
	draw_text(menuX + offset, ySpaced, txt);
	draw_text(menuX, ySpaced - offset, txt);
	draw_text(menuX, ySpaced + offset, txt);
	draw_text(menuX, ySpaced, txt);
	draw_set_color(color);
	draw_text(menuX, ySpaced, txt);
	show_debug_message(menu[i]);
}