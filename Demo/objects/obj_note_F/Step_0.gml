var f_pressed;
f_pressed = keyboard_check_pressed(ord("F"));
if (f_pressed && image_index == 0)
{
	var inst = instance_place(x, y, obj_bar);
	if ((inst > 0))
	{
		alarm_set(0, 3);
		image_index = 1;
	}
}