timeline_clear(timeline1);
file = file_text_open_read(working_directory + "\LVL1_Notes.txt");
var i = 0;
global.pause = false;
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
	}
}
file_text_close(file);
//generate level3
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
	}
}
file_text_close(file);
//generate level4
file = file_text_open_read(working_directory + "\LVL4_Notes.txt");
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
			timeline_moment_add_script(timeline4, thisTime, CreateSpace);
			break;
			case 1:
			// F note
			timeline_moment_add_script(timeline4, thisTime, CreateF);
			break;
			case 2:
			// D note
			timeline_moment_add_script(timeline4, thisTime, CreateD);
			break;
			case 3:
			// S note
			timeline_moment_add_script(timeline4, thisTime, CreateS);
			break;
			case 4:
			// A note
			timeline_moment_add_script(timeline4, thisTime, CreateA);
			break;
		}
		file_text_readln(file);
	}
}
file_text_close(file);
// this is for setting volumes later.
global.previousVoiceIndex = 0;
global.voiceIndex = 5;
global.musicIndex = 5;
global.FXIndex = 5;
global.volumeArr = [0, 0.2, 0.4, 0.6, 0.8, 1]; //array for volume sliders

audio_group_load(audiogroup_voice);
audio_group_load(audiogroup_songs);
audio_group_load(audiogroup_fx);

// determine what levels have been beaten
global.lvl1Beat = false;
global.lvl2Beat = false;
global.lvl3Beat = false;
global.lvl4Beat = false;

file = file_text_open_read(working_directory + "\Beat_Levels.txt");
while (!file_text_eof(file))
{
	level = file_text_read_real(file);
	switch(level)
	{
		case 1:
			global.lvl1Beat = true;
		case 2:
			global.lvl2Beat = true;
			break;
		case 3:
			global.lvl3Beat = true;
			break;
		case 4:
			global.lvl4Beat = true;
			break;
	}
}
file_text_close(file);

room_goto(start_screen);