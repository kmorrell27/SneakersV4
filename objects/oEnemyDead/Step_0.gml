if (!done) {
	vsp = vsp + grv;

	if (place_meeting(x + hsp, y, oWall)) {
		while (!place_meeting(x + sign(hsp), y, oWall)) {
			x += sign(hsp);
		}
		hsp = 0;
	}

	x += hsp;

	if (place_meeting(x, y + vsp, oWall)) {
		// LET THE BODIES HIT THE FLOOR
		if (vsp > 0) {
			done = true;
			image_index = 1;
		}
		while (!place_meeting(x, y + sign(vsp), oWall)) {
			y += sign(vsp);
		}
		vsp = 0;
	}

	y += vsp;
}