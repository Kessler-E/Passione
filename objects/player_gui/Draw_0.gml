if(keyboard_check_pressed(ord("I"))) {
	show_gui = !show_gui;
}

if(show_gui) {
	draw_set_color(c_black);
	draw_rectangle_color(x - (plW * 3), y - 50, x + (plW * 3), y - 200,c_fuchsia, c_aqua, c_fuchsia, c_aqua,false);
}