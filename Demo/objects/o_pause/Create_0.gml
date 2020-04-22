menu_x = x;
menu_y = y;
button_h = 84;
button[0] = "Resume Game";
button[1] = "Restart Level";
button[2] = "Level Select";
button[3] = "Main Menu";
button[4] = "Exit";
buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;
switch(global.last_level)
{
	case 1:
		timeline_index = timeline1;
		break;
	case 2:
		timeline_index = timeline2;
		break;
	case 3:
		timeline_index = timeline3;
		break;
	case 4:
		timeline_index = timeline4;
		break;
}
timeline_running = true;
timeline_position = 0;
