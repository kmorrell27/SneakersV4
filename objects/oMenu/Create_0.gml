/// @description Insert description here
// You can write your code in this editor

// THIS IS BAD DESIGN! I Should have some init script/object
#macro SAVEFILE "Save.sav"

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();
guiMargin = 32;

menuX = guiWidth + 200;
menuY = guiHeight - guiMargin;
menuXTarget = guiWidth - guiMargin;
menuControl = true;
menuSpeed = 25; // Lower is faster
menuFont = fMenu;
menuItemHeight = font_get_size(fMenu);
menuCommitted = -1;
menu = ["Quit", "Continue", "New Game"];
menuCursor = 2;
menuLength = array_length_1d(menu);

menuTop = menuY - ((menuItemHeight * 1.5) * menuLength);
