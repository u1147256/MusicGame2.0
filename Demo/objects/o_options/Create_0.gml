
menu_x = x;
menu_y = y;
button_h = 100;

button[0] = "Voice Volume " + string(global.volumeArr[global.voiceIndex] * 100);
button[1] = "Music Volume " + string(global.volumeArr[global.musicIndex] * 100);
button[2] = "FX Volume " + string(global.volumeArr[global.FXIndex] * 100);
button[3] = "Back";
buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;
