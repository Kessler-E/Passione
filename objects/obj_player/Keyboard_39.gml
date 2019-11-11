if cooldown <= 0{
	if attacktype == "scatter"{
		for (var i = -10; i <= 10; i += 5){
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
		attack.dir = 0	
	}
	cooldown = room_speed*cooldown_mod
}