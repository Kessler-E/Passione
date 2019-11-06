
//draws grid based
for(var vx = 0; vx < room_width; vx += scale) {
	for(var vy = 0; vy < room_height; vy += scale) {
		if(mouse_x > vx && mouse_x < vx + scale && mouse_y > vy && mouse_y < vy + scale) {
			draw_rectangle_color(vx, vy, vx + scale, vy + scale, c_fuchsia, c_aqua, c_fuchsia, c_aqua, true);
			
			obj_dungeon_master.nearest_box_x = vx;
			obj_dungeon_master.nearest_box_y = vy;
			
			if(obj_dungeon_master.selected_entity == 0) {
				if(mouse_check_button_pressed(mb_right)) {
					audio_play_sound(menu_open, 1, false);
					if(instance_exists(menu_obj)) {
						instance_destroy(menu_obj);
					}
					var menu = instance_create_layer(x, y, "gui", menu_obj);
					menu.x_spawn = vx;
					menu.y_spawn = vy;
				}
			}	
		}
	}
}
