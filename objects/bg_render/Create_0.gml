scale = 50;

random_set_seed(current_second);
for(var vx = 0; vx < room_width; vx += scale) {
	for(var vy = 0; vy < room_height; vy += scale) {
		map_arr[vx, vy] = false;
		var RNG = irandom_range(1, 7);
		if(RNG == 1) {
			map_arr[vx, vy] = true;
		}
	}
}

for(var vx = 0; vx < room_width; vx += scale) {
	for(var vy = 0; vy < room_height; vy += scale) {
		if(map_arr[vx, vy] == true) {
			instance_create_layer(vx, vy, "Instances", obj_wall);
		}
	}
}
