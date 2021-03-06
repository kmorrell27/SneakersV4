vsp = vsp + grv;

// Green vs red koopa behavior
if (grounded && afraidOfHeights && !place_meeting(x + hsp, y + 1, oWall)) {
	// Flip it and reverse it
	hsp = -hsp;
}

if (place_meeting(x + hsp, y, oWall)) {
	while (!place_meeting(x + sign(hsp), y, oWall)) {
		x += sign(hsp);
	}
	hsp = -hsp;
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
	grounded = false;
	// We're aiborne!
	sprite_index = sEnemyJumping;
	image_speed = 0;
	if (vsp > 0) {
		image_index = 1;
	} else {
		image_index = 0;
	}
} else {
	grounded = true;
	// We're grounded!
	image_speed = 1;
	if (hsp == 0) {
		sprite_index = sEnemy;
	} else {
		sprite_index = sEnemyRunning;
	}
}

// There is nothing sexier than a ternery condition
image_xscale = sign(hsp) != 0 ? sign(hsp) * size : image_xscale;
image_yscale = size;
