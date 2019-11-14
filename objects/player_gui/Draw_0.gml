price[0] = 5 * obj_player.health_level + 5;
price[1] = 5 * obj_player.speed_level + 5;
price[2] = 5 * obj_player.damage_level + 5;
labels = ["Health Lvl " + string(obj_player.health_level + 1), "Movespeed Lvl " + string(obj_player.speed_level + 1), "Damage Lvl " + string(obj_player.damage_level + 1)];

if(keyboard_check_pressed(ord("I"))) {
	
	show_gui = !show_gui;
	
	if(show_gui) 
		audio_play_sound(menu_open, -1, false);
	else
		audio_play_sound(menu_close, -1, false);
	
}





for(var i = 0; i < array_length_1d(player_buyables); i++) {
	if(i != selected_int) {
		selected[i] = false;
	} else {
		selected[i] = true;
	}
}

	if(show_gui) {
		if(keyboard_check_pressed(ord("Q"))) {
			audio_play_sound(menu_tic, 1, false);
		if(!selected_int <= 0) {
			selected_int -= 1; 
		} else {
			selected_int = array_length_1d(selected); 
		}
	}



	//add stuff here when player activates
	if(keyboard_check_pressed(ord("E"))) {
	
		if(selected_int == 0) {
			if(global.player_gold >= price[0]) {
				obj_player.health_level++;
				global.player_gold -= price[0];
				audio_play_sound(player_lvlup, 1, false);
			} else {
				audio_play_sound(funds_low, 1, false);
			}
		} else if(selected_int == 1) {
			if(global.player_gold >= price[1]) {
				obj_player.speed_level++;
				global.player_gold -= price[1];
				audio_play_sound(player_lvlup, 1, false);
			} else {
				audio_play_sound(funds_low, 1, false);
			}
		} else if(selected_int == 2) {
			if(global.player_gold >= price[2]) {
				obj_player.damage_level++;
				global.player_gold -= price[2];
				audio_play_sound(player_lvlup, 1, false);
			} else {
				audio_play_sound(funds_low, 1, false);
			}
		} 
	
		show_gui = false;
	}
	draw_set_color(c_white);
	draw_rectangle(x - (plW * 3), y - 50, x + (plW * 3), y - height, false);
	
	for(var i = 0; i < array_length_1d(player_buyables); i++) {
		
		//var c_y = y + (i * 50) + 50;
		
		draw_set_color($9af5f3);
		
		if(selected[i]) {
			draw_set_color(make_color_rgb(255, 0, 0));
		} else {
			draw_set_color(make_color_rgb(255, 130, 130));
		}
		
		draw_rectangle(x - (plW * 3) + 5, y - height + (i * 30) + 5, x + (plW * 3) - 5, y - height + (i * 30) + 30, false);
		
		
		draw_set_color(c_black);
		draw_set_font(def_small);
		draw_text(x - (plW * 3) + 10, y - height + (i * 30) + 7, labels[i] + " ($" + string(price[i]) + ")");
	}
	
	
	
}

if(keyboard_check_pressed(vk_escape)) {
	show_gui = false;
}