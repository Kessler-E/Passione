
if(selected_entity != 0) {
	//this draws the preview
	sprite_to_draw = selected_entity.sprite_index;
	draw_set_alpha(0.5);
	draw_sprite(sprite_to_draw, -1, nearest_box_x, nearest_box_y);
	draw_set_alpha(1);
} else {
	
	sprite_to_draw = 0;
	
	if(mouse_check_button_pressed(mb_left)) {
		if(instance_exists(destination_marker)) {
			instance_destroy(destination_marker);
		}
		select_org_x = mouse_x;
		select_org_y = mouse_y;
		effect_create_above(ef_ring, select_org_x, select_org_y, 1, c_aqua);
		marker = instance_create_layer(select_org_x, select_org_y, "Instances", destination_marker)
	}
	if(mouse_check_button(mb_left)) {
		
		change_org = false;
		
		draw_set_color($00ff00);
		draw_rectangle(select_org_x, select_org_y, mouse_x, mouse_y, true);
		
	} 
}