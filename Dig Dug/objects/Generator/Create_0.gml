instance_create_layer(405 + 45/2, 45 + 45/2, "Instances", Player);

TwoDGenerator(30, 45, 32, 25, 1, 2);
TwoDGenerator(450, 45, 32, 25, 5, 1);
TwoDGenerator(30, 525, 32, 28, 2, 1);
TwoDGenerator(450, 525, 32, 25, 1, 1);

/*
spawn = GroundOne;
enemyCount = 0;
enemyMax = 4;
boulderCount = 0;
boulderMax = 4;

randomize();
for(var r = 0; r < 65; r++){
	for(var c = 0; c < 50; c++){
		twoDArray[r][c] = instance_create_layer(50 + c*15, 50 + r*15, "Instances", spawn);
		twoDArray[r][c].image_blend = merge_color(c_green, c_orange, random_range(.5, .95));
	}
}

while(enemyCount < enemyMax){
	for(var r = 5; r < 55; r += 3){
		for(var c = 15; c < 40; c += 2){
			
			if(twoDArray[r][c].marked == false && irandom_range(0, 200) < 1 && enemyCount < enemyMax){
				
				if(irandom_range(0, 100) < 50){
					for(var a = r; a < r+3; a++){
						for(var b = c; b < c+9; b++){
							twoDArray[a][b].marked = true;
						}
					}
				}else{
					for(var a = r; a < r+9; a++){
						for(var b = c; b < c+3; b++){
							twoDArray[a][b].marked = true;
						}
					}
				}
				enemyCount++;
				r += 11;
				c += 13;
			}else if(twoDArray[r][c].marked == false && irandom_range(0, 50) < 2 && boulderCount < boulderMax){
				for(var a = r; a < r+3; a++){
					for(var b = c; b < c+3; b++){
						twoDArray[a][b].image_blend = c_red;
					}
				}
				boulderCount++;
				c += 5;
			}
			
			
		}
	}
}
*/