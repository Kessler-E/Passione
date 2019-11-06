x_spawn = 0;
y_spawn = 0;


//add everything buyable object here
//layout: [a,b,c,d]
buyables = [enemy_basic, enemy_ranged, enemy_swarm];

//names
//add the name of the object in the correspoding position in the buyables array.\
//layout: [a,b,c,d]
names = ["Melee", "Ranged", "Swarm"];

//prices
//layout: [a,b,c,d]
prices = [100, 120, 150];

//descriptions of each
desc = ["Basic enemy, uses melee attacks.", "Ranged enemy, shoots bullets at the player", "Swarm, a group of smaller, weaker melee enemies."];

//scales the menu and buttons.
universal_width = 200;

//change border size
border = 5;

//height
height = (20 + (array_length_1d(buyables) * 75));

//selected enemy
selected = noone;