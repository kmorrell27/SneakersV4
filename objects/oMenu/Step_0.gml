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
		MenuSelect(menuCursor);
		menuControl = false;
	}
	
	var mouseYGui = device_mouse_y_to_gui(0);
	if (mouseYGui < menuY && mouseYGui > menuTop) {
		menuCursor = (menuY - mouseYGui) div (menuItemHeight * 1.5); 
		
		if (mouse_check_button_pressed(mb_left)) {
			MenuSelect(menuCursor);
			menuControl = false;
		}
	}
}