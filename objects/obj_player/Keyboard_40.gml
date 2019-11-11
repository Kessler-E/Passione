if cooldown <= 0{
	if attacktype == "scatter"{
		for (var i = 260; i <= 280; i += 5){
		attack = instance_create_depth(x,y,100,obj_attack_player)
		attack.type = attacktype
		attack.damage = damage
		attack.dir = i
		}
	}
	else{
		attack = instance_create_depth(x,y,100,obj_attack_player)
		attack.type = attacktype
		attack.damage = damage
		attack.dir = 270	
	}
	cooldown = room_speed*cooldown_mod
}