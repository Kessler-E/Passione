if instance_exists(destination_marker){
	dir_x = sign(destination_marker.x - x)
	dir_y = sign(destination_marker.y - y)
}
else if distance_to_object(obj_player) >= range{
	dir_x = sign(obj_player.x - x)
	dir_y = sign(obj_player.y - y)	
}
else if cooldown <= 0{
	dir_x = 0
	dir_y = 0
	shot = instance_create_depth(x,y,100,obj_attack_enemy)
	shot.damage = e_damage
	cooldown = cooldown_max
}

hsp = movespeed * dir_x
vsp = movespeed * dir_y

collide_move(hsp, vsp, obj_wall)

if e_health <= 0{
	instance_destroy(self)	
}

if cooldown > 0{
	cooldown--	
}