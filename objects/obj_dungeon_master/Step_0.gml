x = mouse_x;
y = mouse_y;

if(selected_entity == 0) {
	if(!instance_exists(menu_obj)) {
		if(mouse_check_button_pressed(mb_left)) {
			if(instance_exists(destination_marker)) {
				instance_destroy(destination_marker);
			}
		
			effect_create_above(ef_ring, x, y, 1, c_aqua);
			marker = instance_create_layer(x, y, "Instances", destination_marker)
			if point_distance(marker.x,marker.y,obj_player.x,obj_player.y) <= obj_player.sprite_width{
				marker.is_tracking_player = true	
			}
		}
	}
} else {
	if(mouse_check_button_pressed(mb_left)) {
		
		if(instance_exists(destination_marker)) {
			instance_destroy(destination_marker);
		}
		
		
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
}