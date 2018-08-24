/// @description Insert description here
// You can write your code in this editor
if (flash > 0) {
	shader_set(shWhite);
	draw_self();
	shader_reset();
	flash--;
} else {
	draw_self();
}