// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function TwoDGenerator(startx, starty, xd, yd, eMax, bMax){
spawn = GroundOne;
enemyCount = 0;
boulderCount = 0;
enemyMax = eMax;
boulderMax = bMax;
safe = true;
var twoDArray;
randomize();
for(var r = 0; r < xd; r++){
	for(var c = 0; c < yd; c++){
		twoDArray[r][c] = instance_create_layer(startx + c*15, starty + r*15, "Instances", spawn);
		twoDArray[r][c].image_blend = merge_color(c_green, c_orange, random_range(.5, .95));
	}
}

while(enemyCount < enemyMax){
	for(var r = 3; r < xd - 9; r++){
		for(var c = 5; c < yd - 9; c++){
			
			if(twoDArray[r][c].marked == false && irandom_range(0, 200) < 1 && enemyCount < enemyMax){
				
				
				if(irandom_range(0, 100) < 50){
					for(var a = r-1; a < r+4; a++){
						for(var b = c-1; b < c+10; b++){
							if(twoDArray[a][b].marked == true) safe = false;
						}
					}
					if(safe){
						instance_create_layer(twoDArray[r][c].x + 45/2, twoDArray[r][c].y + 45/2, "Instances", Enemy);
						for(var a = r; a < r+3; a++){
							for(var b = c; b < c+9; b++){
								twoDArray[a][b].marked = true;
							}
						}
						enemyCount++;
					}
				}else{
					for(var a = r-1; a < r+10; a++){
						for(var b = c-1; b < c+4; b++){
							if(twoDArray[a][b].marked == true) safe = false;
						}
					}
					if(safe){
						instance_create_layer(twoDArray[r][c].x + 45/2, twoDArray[r][c].y + 45/2, "Instances", Enemy);
						for(var a = r; a < r+9; a++){
							for(var b = c; b < c+3; b++){
								twoDArray[a][b].marked = true;
							}
						}
						enemyCount++;
					}
				}
				
				}
				safe = true;
			}
		}
	}
	BoulderSpawn(xd, yd, twoDArray, bMax);
}