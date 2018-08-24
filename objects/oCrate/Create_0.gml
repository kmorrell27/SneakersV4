/// @description Insert description here
// You can write your code in this editor
myWall = instance_create_layer(x, y, layer, oWall);
with (myWall) {
	image_xscale = other.sprite_width / sprite_width;
	image_yscale = other.sprite_height / sprite_height;
}