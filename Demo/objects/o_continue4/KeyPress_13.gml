
switch(menu_index) {
	case 0:
		room_goto(lvl4);
		break;
	case 1:
		room_goto(Info4_1);
		break;
}

audio_play_sound(Menu_selected, 1, false);
