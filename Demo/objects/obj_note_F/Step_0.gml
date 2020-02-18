var a_pressed;
f_pressed = keyboard_check_pressed(ord("F"));
if (f_pressed)
{
	var inst = instance_place(x + 0, y + 0, obj_bar);
	if ((inst > 0))
	{
		instance_destroy();
	}
}