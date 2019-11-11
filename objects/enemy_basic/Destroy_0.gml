if 1 <= irandom_range(1,100) <=15{
	instance_create_depth(x,y,100,obj_pickup_health)	
}
if 1 <= irandom_range(1,100) <=5{
	instance_create_depth(x,y,100,obj_pickup_machinegun)	
}
global.player_gold += price * (0.75 + (level*0.25))