timeline_clear(timeline1);
file = file_text_open_read(working_directory + "\LVL1_Notes.txt");
var i = 0;
global.lvl1notes = 0;
global.lvl2notes = 0;
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
file_text_close(file);
room_goto(start_screen);