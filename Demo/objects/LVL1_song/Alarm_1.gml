global.lvl1Beat = true;

file = file_text_open_write(working_directory + "\Beat_Levels.txt");
file_text_write_real(file, "1\n");
file_text_close(file);

room_goto(Victory);