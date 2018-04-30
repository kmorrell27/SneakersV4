hsp = 0;
vsp  = 0;
grv = 0.3;
done = false;

screenShake(6, 25);

image_speed = 0;
image_index = 0;
audio_play_sound(snDeath, 0, false);
game_set_speed(30, gamespeed_fps);

// The player object will cease to exist, but the id will be the same
// This keeps the camera focused
with (oCamera) {
	follow = other.id;
}
