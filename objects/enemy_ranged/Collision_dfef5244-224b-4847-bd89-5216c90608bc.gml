e_health -= other.damage
effect_create_above(ef_spark, x, y, 1, c_yellow);
audio_play_sound(enemy_hit, 1, false);
instance_destroy(other)
