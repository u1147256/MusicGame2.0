
switch(menu_index) {
	case 0:
		room_goto(lvl3);
		break;
	case 1:
		room_goto(Info3_1);
		break;
}

audio_play_sound(Menu_selected, 1, false);