
switch(menu_index) {
	case 0:
		room_goto(menu);
		break;
	case 1:
		room_goto(lvl1Debug);
		break;
	case 3:
		game_end();
		break;
}

audio_play_sound(Menu_selected, 1, false);