audio_play_sound(Menu_selected, 1, false);

if global.last_level == 1
			{
			global.last_level = 5;
			room_goto(lvl1);
			}
		else if global.last_level == 2
			{
			global.last_level = 6;
			room_goto(lvl2);
			}
		else
			{
			room_goto(menu);
			}