x = oPlayer.x;
y = oPlayer.y + 10;

image_angle = point_direction(x, y, mouse_x, mouse_y);

firingDelay = (firingDelay > 0) ? firingDelay - 1 : 0;
recoil = recoil > 0 ? recoil - 1 : 0;
if (mouse_check_button(mb_left) && firingDelay == 0) {
	firingDelay = 5;
	recoil = 4;
	with (instance_create_layer(x, y, "Bullet", oBullet)) {
		speed = 25;
		// This is fun
		direction = other.image_angle + random_range(-3, 3);
		image_angle = direction;
	}
}

x -= lengthdir_x(recoil, image_angle);
y -= lengthdir_y(recoil, image_angle);

if (image_angle > 90 && image_angle < 270) {
	image_yscale = -1;
} else {
	image_yscale = 1;
}