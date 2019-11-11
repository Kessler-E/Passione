movespeed = 3 + (speed_level*0.25)
health_max = 100 + (health_level*25)
switch attacktype{
	case "machinegun":
		cooldown_mod = (1 - (speed_level*0.1))*0.2
		damage = 3 + (damage_level*2)
		
	break
	case "scatter":
		cooldown_mod = (1 - (speed_level*0.1))*2
		damage = 2 + (damage_level*2)
	break
	case "normal":
		cooldown_mod = (1 - (speed_level*0.1))
		damage = 5 + (damage_level*2)
	break
}

key_up		= -keyboard_check(ord("W"));
key_down	= keyboard_check(ord("S"));
key_right	= keyboard_check(ord("D"));
key_left	= -keyboard_check(ord("A"));

if instance_exists(knockback_target) and knockback > 0{
	hsp = !sign(knockback_target.x - x) * 10
	vsp = !sign(knockback_target.y - y) * 10
	knockback--
}
else{
	hsp = movespeed * (key_right + key_left);
	vsp = movespeed * (key_up + key_down);
}

collide_move(hsp, vsp, obj_wall)

if health <= 0{
	instance_destroy(self)
}

if health >= 100{
	health = 100	
}

if cooldown > 0{
	cooldown--
}

if iframes > 0{
	iframes--
}