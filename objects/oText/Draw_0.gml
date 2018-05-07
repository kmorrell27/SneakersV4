/// @description Insert description here
// You can write your code in this editor
var halfW = w / 2;

draw_set_color(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x - halfW - border,
				   y - h - (border * 2), 
				   x + halfW + border,
				   y,
				   15,
				   15,
				   false);
				   
draw_sprite(sMarker, 0, x, y);
draw_set_alpha(1);

// Draw text

drawSetText(c_white, fSign, fa_center, fa_top);
draw_text(x, y - h - border, textCurrent);
