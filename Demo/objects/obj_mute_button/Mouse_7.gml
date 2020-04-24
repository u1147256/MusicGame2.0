temp = global.previousVoiceIndex; 
global.previousVoiceIndex = global.voiceIndex;
global.voiceIndex = temp;
audio_group_set_gain(audiogroup_voice, global.volumeArr[global.voiceIndex], 0);
