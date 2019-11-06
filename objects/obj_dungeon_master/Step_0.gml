x = mouse_x;
y = mouse_y;

if(selected_entity != 0) {
	if(mouse_check_button_pressed(mb_left)) {
		audio_play_sound(place_entity, 1, false);
		instance_create_layer(nearest_box_x, nearest_box_y, "Instances", selected_entity);
		selected_entity = 0;
	}
}