switch(menu_index) {
	case 0:
		global.voiceIndex = (global.voiceIndex + 1) mod 6;
		if (global.previousVoiceIndex != 0)
		{
			global.previousVoiceIndex = 0;
		}
		audio_group_set_gain(audiogroup_voice, global.volumeArr[global.voiceIndex], 0);
		break;
	case 1:
		global.musicIndex = (global.musicIndex + 1) mod 6;
		audio_group_set_gain(audiogroup_songs, global.volumeArr[global.musicIndex], 0);
		break;
	case 2:
		global.FXIndex = (global.FXIndex + 1) mod 6;
		audio_group_set_gain(audiogroup_fx, global.volumeArr[global.FXIndex], 0);
		break;
}

audio_play_sound(Menu_selected, 1, false);