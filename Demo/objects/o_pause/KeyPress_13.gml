if (global.pause)
{
	global.pause = false;
	switch(menu_index)
	{
	case 0:
		timeline_running = true;
		timeline_speed = 1;
		audio_resume_all();
		break;
	case 1:
		audio_stop_all();
		if (global.last_level == 1)
		{
			room_goto(lvl1);
		}
		else if (global.last_level == 2)
		{
			room_goto(lvl2);
		}
		else if (global.last_level == 3)
		{
			room_goto(lvl3);
		}
		else if (global.last_level == 4)
		{
			room_goto(lvl4);
		}
		else
		{
			room_goto(menu);
		}
		break;
	case 2:
		audio_stop_all();
		room_goto(menu);
		break;
	case 3:
		room_goto(start_screen);
		audio_stop_all();
		break;
	case 4:
		game_end();
		break;
	}
	audio_play_sound(Menu_selected, 1, false);
}

