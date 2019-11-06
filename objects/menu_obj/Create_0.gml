x_spawn = 0;
y_spawn = 0;


//add everything buyable object here
buyables = [enemy, other_enemy, other_e, other_enemy];

//names
//add the name of the object in the correspoding position in the buyables array.
names = ["uhh yea", "kappa", "i dont know", "same one"];

//prices
prices = [100, 120, 150, 200];

//scales the menu and buttons.
universal_width = 200;

//change border size
border = 5;

//height
height = (20 + (array_length_1d(buyables) * 75));

//selected enemy
selected = noone;