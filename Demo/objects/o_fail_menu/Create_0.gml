
menu_x = x;
menu_y = y;
button_h = 80;

button[0] = "Restart Level";
button[1] = "Level Select";
button[2] = "Main Menu";
button[3] = "Exit";
buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;
global.pause = true;