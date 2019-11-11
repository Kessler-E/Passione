hspd = argument0
vspd = argument1
obj = argument2

if place_meeting(x+hspd, y, obj){
	while !place_meeting(x+sign(hspd), y, obj){
		x += sign(hspd);
	}
	hspd = 0;
}

x += hspd

if place_meeting(x, y+vspd, obj){
	while !place_meeting(x, y+sign(vspd), obj){
		y += sign(vspd);
	}
	vspd = 0;
}

y += vspd