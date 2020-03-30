alarm_set(0, 60);
alarm_set(1, 4200);

timeline_index = timeline0;
timeline_position = 0;
timeline_running = true;
timeline_clear(timeline0);

file = file_text_open_read(working_directory + "\LVL1_Notes.txt");
var i = 0;
while (!file_text_eof(file))
{
	i++;
	var thisTime = file_text_read_real(file);
	//if (i mod 2 != 0)
	{
		timeline_moment_add_script(timeline0, thisTime, generateNote);
		file_text_readln(file);
	}
}
file_text_close(file);

