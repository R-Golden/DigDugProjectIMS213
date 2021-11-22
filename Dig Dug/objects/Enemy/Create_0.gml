touched = false;
boulderTouched = noone;
path = path_add();
count = 0;
eSpeed = 5;
hasPath = false;
grid = mp_grid_create(0,0,room_width/15,room_height/15, Enemy.sprite_width, Enemy.sprite_height);
alarm[0] = 1;