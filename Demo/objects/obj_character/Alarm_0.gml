if (global.last_level == 1)
{
	path_start(lvl1_path, path_get_length(lvl1_path)/4100, path_action_stop, false);
}
else if (global.last_level == 2)
{
	path_start(lvl2_path, path_get_length(lvl2_path)/4850, path_action_stop, false);
}
else if (global.last_level == 3)
{
	path_start(lvl3_path, path_get_length(lvl3_path)/5300, path_action_stop, false);
}