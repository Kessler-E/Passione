scale = 50;
map_arr = 0;
can_drop = false;

drops = [obj_pickup_machinegun, obj_pickup_scatter, obj_pickup_normal, obj_pickup_health];

random_set_seed(current_time);

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
