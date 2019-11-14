if(position_meeting(mouse_x, mouse_y, button_start)) {
	if(mouse_check_button_pressed(mb_left)) {
		audio_play_sound(entity_select, -1, false);
		room_goto_next();
	}
	sprite_index = spr_button_selected;
} else {
	sprite_index = spr_button;
}