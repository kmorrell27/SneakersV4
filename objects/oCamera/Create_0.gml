/// @description Setup camera
cam = view_camera[0];
follow = oPlayer;
view_w_half = camera_get_view_width(cam) / 2;
view_h_half = camera_get_view_height(cam) / 2;
xTo = xstart;
yTo = ystart;

shakeLength = 0;
shakeMagnitude = 0;
shakeRemain = 0;
buffer = 32;

mountainLayerId = layer_get_id("Mountains");