x = mouse_x;
y = mouse_y;

if(selected_entity != 0) {
	if(mouse_check_button_pressed(mb_left)) {
		audio_play_sound(place_entity, 1, false);
		
		//create multiple if enemy is swarm enemy
		if(selected_entity == buyables[2]) {
			for(var i = 0; i < 6; i++) {
				var xOffset = random_range(-25, 25);
				var yOffset = random_range(-25, 25);
				instance_create_layer(nearest_box_x + xOffset, nearest_box_y + yOffset, "Instances", selected_entity);
			}
		} else {
			instance_create_layer(nearest_box_x, nearest_box_y, "Instances", selected_entity);
		}
		
		
		selected_entity = 0;
	}	
} else {
	
}