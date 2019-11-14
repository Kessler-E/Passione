price[0] = 5 * global.melee + 5;
price[1] = 5 * global.ranged + 5;
price[2] = 5 * global.swarm + 5;


if(mouse_x > 1860 && mouse_x < 1890 && mouse_y > 30 && mouse_y < 60) {
	draw_set_color(make_color_rgb(78, 83, 233));
	
	if(mouse_check_button_pressed(mb_left)) {
		show_gui = !show_gui;
	}
	
} else {
	draw_set_color(make_color_rgb(26, 21, 166));
	
}
draw_triangle(1860, 30, 1890, 30, 1875, 60, false);

if(show_gui) {
	draw_set_color(c_white);
	draw_rectangle(1910 - b_width, 70, 1910, height + 70, false);
	
	/*
	for(var i = 0; i < array_length_1d(buttons); i++) {

		draw_set_color($9af5f3);
		
		if(selected[i]) {
			draw_set_color(make_color_rgb(255, 0, 0));
		} else {
			draw_set_color(make_color_rgb(255, 130, 130));
		}
		
		draw_rectangle()
		
		
		draw_set_color(c_black);
		draw_set_font(def_small);
		draw_text(x - (plW * 3) + 10, y - height + (i * 30) + 7, labels[i] + " ($" + string(price[i]) + ")");
	}
	*/
	
}