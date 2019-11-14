x = obj_player.x;
y = obj_player.y;
plW = obj_player.sprite_index.sprite_width;
plH = obj_player.sprite_index.sprite_height;
show_gui = false;


player_buyables = [0, 0, 0];
prices = [5, 5, 5];
labels = ["Health Lvl " + string(obj_player.health_level + 1), "Movespeed Lvl " + string(obj_player.speed_level + 1), "Damage Lvl " + string(obj_player.damage_level + 1)];
selected = 0;
selected_int = 0;

for(var i = 0; i < array_length_1d(player_buyables); i++) {
	selected[i] = false;
}
selected[0] = true;

height = (20 + (array_length_1d(player_buyables) * 42));