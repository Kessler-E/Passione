if cooldown <= 0{
	attack = instance_create_depth(x,y,100,obj_attack_player)
	attack.type = attacktype
	attack.dir = 0
	cooldown = room_speed*cooldown_mod
}