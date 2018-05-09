/// @arg menuCommitted
menuXTarget = display_get_gui_width() + 200;
menuCommitted = argument0;
screenShake(4, 30);
audio_play_sound(snDeath, 0, false);
menuControl = false;
			
if (menuCommitted > -1) {
	switch (menuCommitted) {
		case 0:
			game_end();
			break;
		case 1:
			if (file_exists(SAVEFILE)) {
				var file = file_text_open_read(SAVEFILE);
				slideTransition(TRANS_MODE.GOTO, file_text_read_real(file));
				file_text_close(file);
			}
			break;
		case 2:
			slideTransition(TRANS_MODE.NEXT);
			break;
		default:
			break;
	}
}