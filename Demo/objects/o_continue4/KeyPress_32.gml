
switch(menu_index) {
	case 0:
		room_goto(lvl4);
		break;
	case 1:
		room_goto(Info4_1);
		break;
	case 2:
		temp = global.previousVoiceIndex; 
		global.previousVoiceIndex = global.voiceIndex;
		global.voiceIndex = temp;
		audio_group_set_gain(audiogroup_voice, global.volumeArr[global.voiceIndex], 0);
		break;
}

audio_play_sound(Menu_selected, 1, false);
