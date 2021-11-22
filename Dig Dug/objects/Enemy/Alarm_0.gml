if(!touched){
mp_grid_add_instances(path,GroundOne,false);
mp_grid_add_instances(path,Boulder,false);
if(mp_grid_path(grid,path,x,y,Player.x,Player.y,false)){
	//show_debug_message("Path");
	hasPath = true;
}else{
	//show_debug_message("NONE");
	hasPath = false;
}
path_start(path, eSpeed,path_action_stop,true);
mp_grid_clear_all(grid);
alarm[0] = 5;
}