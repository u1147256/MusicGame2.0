audio_stop_all();

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
