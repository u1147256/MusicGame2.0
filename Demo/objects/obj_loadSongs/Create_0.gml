timeline_clear(timeline1);
file = file_text_open_read(working_directory + "\LVL1_Notes.txt");
var i = 0;
global.lvl1notes = 0;
global.lvl2notes = 0;
global.lvl3notes = 0;
//generate level1
while (!file_text_eof(file))
{
	i++;
	var thisTime = file_text_read_real(file);
	//if (i mod 2 != 0)
	{
		switch(irandom(4)) {
			case 0:
			// Space note
			timeline_moment_add_script(timeline1, thisTime, CreateSpace);
			break;
			case 1:
			// F note
			timeline_moment_add_script(timeline1, thisTime, CreateF);
			break;
			case 2:
			// D note
			timeline_moment_add_script(timeline1, thisTime, CreateD);
			break;
			case 3:
			// S note
			timeline_moment_add_script(timeline1, thisTime, CreateS);
			break;
			case 4:
			// A note
			timeline_moment_add_script(timeline1, thisTime, CreateA);
			break;
		}
		file_text_readln(file); //skip line
		global.lvl1notes++;
	}
}
file_text_close(file);

//generate level2
file = file_text_open_read(working_directory + "\LVL2_Notes.txt");
i = 0;
while (!file_text_eof(file))
{
	i++;
	var thisTime = file_text_read_real(file);
	if (i mod 2 != 0)
	{
		switch(irandom(4)) {
			case 0:
			// Space note
			timeline_moment_add_script(timeline2, thisTime, CreateSpace);
			break;
			case 1:
			// F note
			timeline_moment_add_script(timeline2, thisTime, CreateF);
			break;
			case 2:
			// D note
			timeline_moment_add_script(timeline2, thisTime, CreateD);
			break;
			case 3:
			// S note
			timeline_moment_add_script(timeline2, thisTime, CreateS);
			break;
			case 4:
			// A note
			timeline_moment_add_script(timeline2, thisTime, CreateA);
			break;
		}
		file_text_readln(file);
		global.lvl2notes++;
	}
}
//generate level2
file = file_text_open_read(working_directory + "\LVL3_Notes.txt");
i = 0;
while (!file_text_eof(file))
{
	i++;
	var thisTime = file_text_read_real(file);
	if (i mod 2 != 0)
	{
		switch(irandom(4)) {
			case 0:
			// Space note
			timeline_moment_add_script(timeline3, thisTime, CreateSpace);
			break;
			case 1:
			// F note
			timeline_moment_add_script(timeline3, thisTime, CreateF);
			break;
			case 2:
			// D note
			timeline_moment_add_script(timeline3, thisTime, CreateD);
			break;
			case 3:
			// S note
			timeline_moment_add_script(timeline3, thisTime, CreateS);
			break;
			case 4:
			// A note
			timeline_moment_add_script(timeline3, thisTime, CreateA);
			break;
		}
		file_text_readln(file);
		global.lvl3notes++;
	}
}
file_text_close(file);

// this is for setting volumes later.
global.voiceIndex = 5;
global.musicIndex = 5;
global.FXIndex = 5;
global.volumeArr = [0, 0.2, 0.4, 0.6, 0.8, 1]; //array for volume sliders

audio_group_load(audiogroup_voice);
audio_group_load(audiogroup_songs);
audio_group_load(audiogroup_fx);

room_goto(start_screen);