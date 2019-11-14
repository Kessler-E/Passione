if instance_exists(destination_marker) and distance_to_object(destination_marker) < 100{
	dir_x = sign(destination_marker.x - x)
	dir_y = sign(destination_marker.y - y)
}
else if distance_to_object(obj_player) > 100{
	dir_x = sign(obj_player.x - x)
	dir_y = sign(obj_player.y - y)	
}

hsp = movespeed * dir_x
vsp = movespeed * dir_y

collide_move(hsp, vsp, obj_wall)

if e_health <= 0{
	audio_play_sound(enemy_death, 1, false);
	instance_destroy(self)	
}