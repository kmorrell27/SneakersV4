/// @description Update camera

if (instance_exists(follow)) {
	xTo = follow.x;
	yTo = follow.y;	
}

x += (xTo - x) / 25;
y += (yTo - y) / 25;

x = clamp(x, view_w_half + buffer, room_width - view_w_half - buffer);
y = clamp(y, view_h_half + buffer, room_height - view_h_half - buffer);

x += random_range(-shakeRemain, shakeRemain);
y += random_range(-shakeRemain, shakeRemain);

shakeRemain = max(0, shakeRemain - ((1 / shakeLength) * shakeMagnitude));

camera_set_view_pos(cam, x - view_w_half, y - view_h_half);

if (layer_exists(mountainLayerId)) {
	layer_x(mountainLayerId, x / 2);

}