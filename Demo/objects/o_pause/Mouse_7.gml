if (global.pause || global.last_level == -1)
{
	global.pause = false;
	timeline_running = true;
	timeline_speed = 1;
	audio_resume_all();
}