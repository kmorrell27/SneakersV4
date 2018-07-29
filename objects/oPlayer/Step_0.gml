#region // Get player input

if (hasControl) {
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);

	if (key_left || key_right || key_jump) {
		controller = false;
	}

	if (abs(gamepad_axis_value(0, gp_axislh)) > 0.2) {
		key_left = abs(min(gamepad_axis_value(0, gp_axislh), 0));
		key_right = max(gamepad_axis_value(0, gp_axislh), 0);
		controller = true;
	}

	if (gamepad_button_check(0, gp_face1)) {
		key_jump = true;
		controller = true;
	}
} else {
	key_left = false;
	key_right = false;
	key_jump = false;
}

#endregion

#region // Calculate movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

// Jumping
jumpBuffer--;
if (jumpBuffer > 0 && key_jump) {
	vsp = -10;
	jumpBuffer = 0;
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

#endregion

#region // Animation

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
	jumpBuffer = 10;
	
	// Oh I don't like this at all
	// We've just landed
	if (sprite_index == sPlayerJump) {
		// This bit is kind of clever though
		audio_sound_pitch(snLanding, choose(0.8, 1.0, 1.2));
		audio_play_sound(snLanding, 0, false);
	}
	image_speed = 1;
	if (hsp == 0) {
		sprite_index = sPlayer;
	} else {
		sprite_index = sPlayerRunning;
	}
}

// There is nothing sexier than a ternery condition
image_xscale = sign(hsp) != 0 ? sign(hsp) : image_xscale;

#endregion