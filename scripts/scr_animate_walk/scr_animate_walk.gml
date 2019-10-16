// This  funciton will activate or deactivate walking sprites of the corresponding color

if (x_prev_dir != x_dir || y_prev_dir != y_dir) {
	//  Use direction to detemine which  sprite to use 0 being up, and other directions indexed clockwise.
	var walk_sprite = "";

	// determine prefix
	switch(color){
		case 0: 
		walk_sprite += "spr_pc_wht";
		break;
		case 1:
		walk_sprite += "spr_pc_grn";
		break;
		case 2:
		walk_sprite += "spr_pc_red";
		break;
		case 3:
		walk_sprite += "spr_pc_blu";
		break;
		default:
		walk_sprite += "spr_pc_wht";
		break;
	}

	//determine suffix (if it is idle, no suffix)
	if (x_dir < 0){
		// use left
		walk_sprite += "_left";
	} else if (x_dir > 0){
		//use right
		walk_sprite += "_right";
	} else if (y_dir < 0){
		//use up
		walk_sprite += "_up";
	} else if (y_dir > 0){
		//use down
		walk_sprite += "_down";
	}
	
	ob_player.sprite_index = asset_get_index(walk_sprite);

	x_prev_dir = x_dir;
	y_prev_dir = y_dir;
}
