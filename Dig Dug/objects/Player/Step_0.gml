if(keyboard_check(ord("W"))){
	y -= Pspeed;
}else if(keyboard_check(ord("A"))){
	x -= Pspeed;
}else if(keyboard_check(ord("S"))){
	y += Pspeed;
}else if(keyboard_check(ord("D"))){
	x += Pspeed;
}
target = instance_nearest(x, y, Enemy);
if(keyboard_check_pressed(vk_space)){
	if(target != noone){
		if(distance_to_object(target) < 40 && target.hasPath){
			target.eSpeed = 0;
		}
	}
}