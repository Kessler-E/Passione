if(position_meeting(mouse_x, mouse_y, tutorial_menu)) {
	if(mouse_check_button_pressed(mb_left)) {
		audio_play_sound(menu_close, 1, false);
		instance_destroy();
	}
} 