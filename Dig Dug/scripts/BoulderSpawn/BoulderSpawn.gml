// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BoulderSpawn(xd, yd, twoDArray, boulderMax){
	boulderCount = 0;
	safe = true;
	cc =0;
	while(boulderCount < boulderMax){
		for(var r = 5; r < xd - 9; r++){
			for(var c = 5; c < yd - 9; c++){
				if(twoDArray[r][c].marked == false && irandom_range(0, 100) < 2 && boulderCount < boulderMax){
					for(var a = r-1; a < r+4; a++){
						for(var b = c-1; b < c+4; b++){
							if(twoDArray[a][b].marked == true) safe = false;
						}
					}
					cc++;
					show_debug_message(string(r)+ " " +string(c)+"Played: " + string(cc));
					
					if(safe == true){
						instance_create_layer(twoDArray[r][c].x, twoDArray[r][c].y, "Instances", Boulder);
						for(var a = r; a < r+3; a++){
							for(var b = c; b < c+3; b++){
								twoDArray[a][b].marked = true;
							}
						}
						boulderCount++;
						c += 5;
					}
				}
				safe = true;
			}
		}
	}
}