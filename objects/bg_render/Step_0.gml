if(global.dropping) {
	if(alarm[0] <= 0) {
		alarm[0] = random_range(0.5, 3) * room_speed;
	}
}

