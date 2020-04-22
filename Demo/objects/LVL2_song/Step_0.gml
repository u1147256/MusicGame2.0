if (!global.pause)
{
	global.time = global.time + 1;
	if (global.time < 60)
	{
		alarm_set(0, 60 - global.time);
	}
	alarm_set(1, 4950 - global.time);
}
else
{
	if (global.time < 60)
	{
		alarm_set(0, -1);
	}
	alarm_set(1, -1);
}
