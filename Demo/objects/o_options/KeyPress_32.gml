
switch(menu_index) {
	case 0:
		global.voiceIndex = (global.voiceIndex + 1) mod 6;
		break;
	case 1:
		global.musicIndex = (global.musicIndex + 1) mod 6;
		break;
	case 2:
		global.FXIndex = (global.FXIndex + 1) mod 6;
		break;
	case 3:
		room_goto(start_screen);
		break;
}

audio_play_sound(Menu_selected, 1, false);
