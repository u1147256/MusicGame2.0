
switch(menu_index) {
	case 0:
		room_goto(start_screen);
		break;
	case 1:
		game_end();
		break;	
}

audio_play_sound(Menu_selected, 1, false);
