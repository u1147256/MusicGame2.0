var space_pressed;
space_pressed = keyboard_check_pressed(vk_space);
if (space_pressed && image_index == 0)
{
	var inst = instance_place(x + 0, y + 0, obj_bar);
	if ((inst > 0))
	{
		alarm_set(0, 3);
		image_index = 1;
	}
}