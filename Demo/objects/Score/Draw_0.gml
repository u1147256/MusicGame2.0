	draw_set_font(font_main);
	draw_set_halign(fa_center);
	draw_set_color(c_black);
	draw_text(32, 0, global.hit);
	draw_set_color(c_red);
	draw_text(32, 64, global.missed);
