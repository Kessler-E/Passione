if(switch_s) {
	if(scale_size > min_scale) {
		scale_size -= scale_speed;
	} else {
		switch_s = false;
	}
} else {
	if(scale_size < max_scale) {
		scale_size += scale_speed;
	} else {
		switch_s = true;
	}
}

if is_tracking_player = true {
	x = obj_player.x 
	y = obj_player.y	
}

image_angle += rotate_speed;

image_xscale = scale_size;
image_yscale = scale_size;