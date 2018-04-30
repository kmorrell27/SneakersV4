/// @description Die

with (oGun) {
	// Don't want a floaty gun. That'd be too spooky
	instance_destroy();
}

instance_change(oPlayerDead, true);

direction = point_direction(other.x, other.y, x, y);
hsp = lengthdir_x(6, direction);
vsp = lengthdir_y(4, direction) - 2;
image_xscale = hsp != 0 ? image_xscale : sign(hsp);