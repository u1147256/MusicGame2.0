switch(menu_index) {
	case 0:
		global.voiceIndex = (6 + global.voiceIndex - 1) mod 6;
		audio_group_set_gain(audiogroup_voice, global.volumeArr[global.voiceIndex], 0);
		break;
	case 1:
		global.musicIndex = (6 + global.musicIndex - 1) mod 6;
		audio_group_set_gain(audiogroup_songs, global.volumeArr[global.musicIndex], 0);
		break;
	case 2:
		global.FXIndex = (6 + global.FXIndex - 1) mod 6;
		audio_group_set_gain(audiogroup_fx, global.volumeArr[global.FXIndex], 0);
		break;
}

audio_play_sound(Menu_selected, 1, false);