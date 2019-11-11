x = obj_player.x;
y = obj_player.y;
plW = obj_player.sprite_index.sprite_width;
plH = obj_player.sprite_index.sprite_height;
show_gui = false;


player_buyables = [0, 0, 0];
labels = ["Label 1", "Label 2", "Label 3"];
selected = 0;
selected_int = 0;

for(var i = 0; i < array_length_1d(player_buyables); i++) {
	selected[i] = false;
}
selected[0] = true;

height = (20 + (array_length_1d(player_buyables) * 42));