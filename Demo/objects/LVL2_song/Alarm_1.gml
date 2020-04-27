global.lvl2Beat = true;

//read contents of file
file = file_text_open_read(working_directory + "\Beat_Levels.txt");
str = "";
while (!file_text_eof(file))
{
	str = str + file_text_readln(file);
}
str = str + "2\n";
file_text_close(file);
//write new contents to file
file = file_text_open_write(working_directory + "\Beat_Levels.txt");
file_text_write_string(file, str);
file_text_close(file);

room_goto(Victory);