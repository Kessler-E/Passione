if iframes <= 0{
	health-= other.damage
	knockback_target = other
	knockback = 5*knockback_mod
	iframes = room_speed * (0.35 * iframes_mod)
}