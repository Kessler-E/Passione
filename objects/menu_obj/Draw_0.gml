//draw_set_alpha(0.76);
draw_set_font(def_small);

//border
draw_set_color($dbdbdb);
draw_rectangle(x_spawn - border, y_spawn - border, x_spawn + universal_width + border, y_spawn + height + border, false);

//main part
draw_set_color($ffffff);
draw_rectangle(x_spawn, y_spawn, x_spawn + universal_width, y_spawn + height, false);

/*
//close button
draw_set_color($dbdbdb);
draw_rectangle(x_spawn + (universal_width - 20) - 5, y_spawn + 5, x_spawn + universal_width - 5, y_spawn + 20 + 5, false);
*/

//draw buttons
for(var i = 0; i < array_length_1d(obj_dungeon_master.buyables); i++) {
	var c_y = y_spawn + (i * 50) + 50;
	var extra_height = 10;
	
	//checking collision with buttons each iteration
	if(mouse_x > x_spawn + 10 && mouse_x < x_spawn + (universal_width - 10) && mouse_y > c_y + extra_height && mouse_y < c_y + 50) {
		draw_set_color(c_black);
		draw_set_font(def);
		draw_text(mouse_x + 30, mouse_y - 30, obj_dungeon_master.desc[i]);
		draw_set_color($4f0a0a);
		draw_set_font(def_small);
		
		if(mouse_check_button_pressed(mb_left)) {
			if(global.enemy_gold >= obj_dungeon_master.prices[i]) {
				audio_play_sound(entity_select, 1, false);
				
				obj_dungeon_master.selected_entity = obj_dungeon_master.buyables[i];
				
				global.enemy_gold -= obj_dungeon_master.prices[i];
				instance_destroy();
			} else {
				alrt = instance_create_depth(x_spawn + 10 , c_y + extra_height, -1000, alert);
				alrt.text = "Not enough funds.";
				audio_play_sound(funds_low, 1, false);
			}
		}
	} else {
		draw_set_color(c_black);
	}
	
	
	show_debug_message("CY: " + string(c_y));
	draw_rectangle(x_spawn + 10, c_y + extra_height, x_spawn + (universal_width - 10), c_y + 50, false);
	draw_set_color($ffffff);
	draw_text(x_spawn + 15, c_y + extra_height, obj_dungeon_master.names[i] + " ($" + string(obj_dungeon_master.prices[i]) + ")");
}



draw_set_color($000000);
draw_set_font(def);
draw_text(x_spawn + 5, y_spawn + 5, "Build Menu");
draw_set_font(def_small);

draw_text(x_spawn + 5, y_spawn + 5, "\nFunds: " + string(global.enemy_gold));



//check if mouse is not touching box
//click outside to close.
if(!(mouse_x > x_spawn && mouse_x < x_spawn + universal_width && mouse_y > y_spawn && mouse_y < y_spawn + height)) {
	if(mouse_check_button_pressed(mb_left)) {
		instance_destroy();
		audio_play_sound(menu_close, 1, false);
	}
}


if(keyboard_check(vk_escape)) {
	game_end();
}



