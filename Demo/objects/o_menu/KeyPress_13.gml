
switch(menu_index) {
	case 0:
		room_goto(menu);
		break;
	case 1:
		room_goto(Options);
		break;
	case 2:
		room_goto(Trophy);
		break;
	case 3:
		game_end();
		break;
}

audio_play_sound(Menu_selected, 1, false);
