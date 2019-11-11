key_up		= -keyboard_check(ord("W"));
key_down	= keyboard_check(ord("S"));
key_right	= keyboard_check(ord("D"));
key_left	= -keyboard_check(ord("A"));

hsp = movespeed * (key_right + key_left);
vsp = movespeed * (key_up + key_down);

collide_move(hsp, vsp, obj_wall)

if health <= 0{
	health = 100
	room_goto(6)
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