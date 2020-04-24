var i = 0;
repeat(buttons) {
	draw_set_font(font_main);
	draw_set_halign(fa_right);
	draw_set_color(c_black);
	
	if (menu_index == i) draw_set_color(c_red);
	
	if (i != 2)
	{
		draw_text(menu_x + button_w * i, menu_y, button[i]);
	}
	else
	{
		draw_text(menu_x + button_w * i * 4/5, menu_y, button[i]);
	}
	i++;
}