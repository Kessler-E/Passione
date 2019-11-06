
if(selected_entity != 0) {
	draw_set_alpha(0.5);
	draw_sprite(box, -1, nearest_box_x, nearest_box_y);
	draw_set_alpha(1);
} else {
	if(mouse_check_button_pressed(mb_left)) {
		select_org_x = mouse_x;
		select_org_y = mouse_y;
	}
	if(mouse_check_button(mb_left)) {
		
		change_org = false;
		
		draw_set_color($00ff00);
		draw_rectangle(select_org_x, select_org_y, mouse_x, mouse_y, true);
		
	} 
}