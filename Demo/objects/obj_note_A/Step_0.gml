if (!global.pause)
{
	y = y + 16;
}
var a_pressed;
a_pressed = keyboard_check_pressed(ord("A"));
if (a_pressed && image_index == 0)
{
	var inst = instance_place(x + 0, y + 0, Note_Hitbox);
	if ((inst > 0))
	{
		global.hit++;
		alarm_set(0, 3);
		image_index = 1;
	}
}
else if (y > 1664 && image_index == 0)
{
	alarm_set(0, 3);
	image_index = 1;
	global.missed++;
	if (global.missed >= 3)
	{
		audio_stop_all();
		room_goto(Failure);
	}
}