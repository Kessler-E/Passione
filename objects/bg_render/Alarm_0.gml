random_set_seed(current_time);

show_debug_message("drop");

var obj = irandom(array_length_1d(drops) - 1);

instance_create_layer(irandom(1920), irandom(1080), "Instances", drops[obj]);
