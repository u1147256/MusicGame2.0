
switch(menu_index) {
	case 0:
		room_goto(lvl2);
		break;
	case 1:
		room_goto(Info2_1);
		break;
}

audio_play_sound(Menu_selected, 1, false);