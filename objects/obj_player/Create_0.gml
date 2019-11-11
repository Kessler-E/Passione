speed_level = 0
health_level = 0
damage_level = 0
movespeed = 3 + (speed_level*0.25)
health_max = 100 + (health_level*25)
health = health_max
attacktype = "normal"
damage = 5 + (damage_level*2)
cooldown = 0
cooldown_mod = 1 - (speed_level*0.1)
iframes = 0
iframes_mod = 1
knockback = 0
knockback_mod = 1
knockback_target = instance_nearest(x,y,enemy_basic)
alarm_set(0,0)