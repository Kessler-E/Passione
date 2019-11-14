if(position_meeting(mouse_x, mouse_y, button_start)) {
	if(!instance_exists(tutorial_menu)) {
		if(play_beep) {
			audio_play_sound(menu_tic, 1, false);
			play_beep = false;
		}
		if(mouse_check_button_pressed(mb_left)) {
			audio_play_sound(entity_select, -1, false);
			global.dropping = true;
			room_goto_next();
		}
		sprite_index = spr_button_selected;
	}
} else {
	play_beep = true;
	sprite_index = spr_button;
}