friend = instance_nth_nearest(x,y,enemy_swarm,2)

if distance_to_object(friend) > 10{
	dir_x = sign(friend.x - x)
	dir_y = sign(friend.y - y)
}
else if distance_to_object(friend) < 2{
	dir_x = !sign(friend.x - x)
	dir_y = !sign(friend.y - y)
}
else if instance_exists(destination_marker){
	dir_x = sign(destination_marker.x - x)
	dir_y = sign(destination_marker.y - y)
}
else{
	dir_x = sign(obj_player.x - x)
	dir_y = sign(obj_player.y - y)	
}

hsp = movespeed * dir_x
vsp = movespeed * dir_y

collide_move(hsp, vsp, obj_wall)

if e_health <= 0{
	instance_destroy(self)	
}