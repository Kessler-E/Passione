//move the dm object to mouse cursor
x = mouse_x;
y = mouse_y;

//add everything buyable object here
//layout: [a,b,c,d]
buyables = [enemy_basic, enemy_ranged, enemy_swarmer];

//names
//add the name of the object in the correspoding position in the buyables array.\
//layout: [a,b,c,d]
names = ["Melee", "Ranged", "Swarm"];

//prices
//layout: [a,b,c,d]
prices = [50, 100, 120];

//descriptions of each
desc = ["Basic enemy, uses melee attacks.", "Ranged enemy, shoots bullets at the player", "Swarm, a group of smaller, weaker melee enemies.", "Test"];

//entity to place
selected_entity = 0;

//sprite index of entity to preview
sprite_to_draw = 0;

//nearest grid space to the mouse 
nearest_box_x = 0;
nearest_box_y = 0;

//selection box variables
select_org_x = 0;
select_org_y = 0;
change_org = true;