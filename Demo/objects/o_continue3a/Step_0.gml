
menu_move = keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);
menu_move2 = keyboard_check_pressed(ord("A")) - keyboard_check_pressed(ord("S"));

menu_index += menu_move;
if (menu_index < 0) menu_index = buttons - 1;
if (menu_index > buttons -1) menu_index = 0;

if (menu_index != last_selected)
{
	audio_play_sound(sound_menu_switch, 1, false);
	
}

last_selected = menu_index;

menu_index += menu_move2;
if (menu_index < 0) menu_index = buttons - 1;
if (menu_index > buttons -1) menu_index = 0;

if (menu_index != last_selected)
{
	audio_play_sound(sound_menu_switch, 1, false);
}

last_selected = menu_index;