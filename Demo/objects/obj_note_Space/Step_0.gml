var space_pressed;
space_pressed = keyboard_check_pressed(vk_space);
if (space_pressed)
{
	var inst = instance_place(x + 0, y + 0, obj_bar);
	if ((inst > 0))
	{
		instance_destroy();
	}
}