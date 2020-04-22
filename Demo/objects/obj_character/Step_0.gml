if (global.pause = false)
{
	if (global.last_level == 1)
	{
		path_speed = path_get_length(lvl1_path)/4100;
	}
	else if (global.last_level == 2)
	{
		path_speed = path_get_length(lvl2_path)/4850;
	}
	else if (global.last_level == 3)
	{
		path_speed = path_get_length(lvl3_path)/5300;
	}
	
	if (global.time < 60)
	{
		alarm_set(0, 60 - global.time);
	}
}
else
{
	if (global.time < 60)
	{
		alarm_set(0, -1);
	}
}
