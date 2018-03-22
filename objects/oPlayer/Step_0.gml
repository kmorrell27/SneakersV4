// Movement

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x, y + 1, oWall) && key_jump) {
	vsp = -10;
}

if (place_meeting(x + hsp, y, oWall)) {
	while (!place_meeting(x + sign(hsp), y, oWall)) {
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;

if (place_meeting(x, y + vsp, oWall)) {
	while (!place_meeting(x, y + sign(vsp), oWall)) {
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;

// Animation

if (!place_meeting(x, y + 1, oWall)) {
	// We're aiborne!
	sprite_index = sPlayerJump;
	image_speed = 0;
	if (vsp > 0) {
		image_index = 1;
	} else {
		image_index = 0;
	}
} else {
	// We're grounded!
	image_speed = 1;
	if (hsp == 0) {
		sprite_index = sPlayer;
	} else {
		sprite_index = sPlayerRunning;
	}
}

// There is nothing sexier than a ternery condition
image_xscale = sign(hsp) != 0 ? sign(hsp) : image_xscale;