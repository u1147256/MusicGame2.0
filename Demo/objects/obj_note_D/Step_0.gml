var s_pressed;
d_pressed = keyboard_check_pressed(ord("D"));
if (d_pressed)
{
	var inst = instance_place(x + 0, y + 0, obj_bar);
	if ((inst > 0))
	{
		instance_destroy();
	}
}