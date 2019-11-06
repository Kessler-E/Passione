x = mouse_x;
y = mouse_y;

//add everything buyable object here
//layout: [a,b,c,d]
buyables = [enemy_basic, enemy_ranged, enemy_swarm];

//names
//add the name of the object in the correspoding position in the buyables array.\
//layout: [a,b,c,d]
names = ["Melee", "Ranged", "Swarm"];

//prices
//layout: [a,b,c,d]
prices = [50, 100, 120];

//descriptions of each
desc = ["Basic enemy, uses melee attacks.", "Ranged enemy, shoots bullets at the player", "Swarm, a group of smaller, weaker melee enemies."];

//sprite indexes
sprites = [box, box, box];


selected_entity = 0;

sprite_to_draw = 0;

nearest_box_x = 0;
nearest_box_y = 0;