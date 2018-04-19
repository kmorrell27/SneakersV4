/// @description Insert description here
// You can write your code in this editor

menuX += (menuXTarget - menuX) / menuSpeed;

// Keyboard controls
if (menuControl) {
	if (keyboard_check_pressed(vk_up)) {
		menuCursor = menuCursor + 1 >= menuLength ? 0 : menuCursor + 1;
	} else if (keyboard_check_pressed(vk_down)) {
		menuCursor = menuCursor - 1 < 0 ? menuLength - 1 : menuCursor - 1;
	} else if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) {
		menuXTarget = guiWidth + 200;
		menuCommitted = menuCursor;
		screenShake(4, 30);
		menuControl = false;
	}
}

if (menuX > guiWidth + 150 && menuCommitted > -1) {
	switch (menuCommitted) {
		case 0:
			game_end();
			break;
		case 1:
			break;
		case 2:
			slideTransition(TRANS_MODE.NEXT);
			break;
		default:
			break;
	}
}
