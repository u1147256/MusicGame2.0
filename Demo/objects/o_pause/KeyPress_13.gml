
switch(menu_index) {
	case 1:
		if global.last_level == 1
			{
			room_goto(lvl1);
			}
		else if global.last_level == 2
			{
			room_goto(lvl2);
			}
		else
			{
			room_goto(menu);
			}
		break;
	case 2:
		room_goto(menu);
		break;
	case 3:
		room_goto(start_screen);
		break;
	case 4:
		game_end();
		break;
}

audio_play_sound(Menu_selected, 1, false);
