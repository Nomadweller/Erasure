// Check if player is within boundaries
// In the case of falling, restart level

if (place_meeting(x,y,ob_player)){
	var player = instance_nearest(x,y,ob_player);

	//start death animation
	switch(player.color){
		case 0: 
		// white death
		player.sprite_index  = spr_pc_wht_death;
		animating = true;
		break;
		case 1:
		// green death
		player.sprite_index  = spr_pc_grn_death;
		animating = true;
		break;
		case 2:
		//red death
		player.sprite_index  = spr_pc_red_death;
		animating = true;
		break;
		case 3:
		// blue death
		player.sprite_index  = spr_pc_blu_death;
		animating = true;
		break;
		default:
		color = 0;
		player.sprite_index = spr_pc_wht_death;
		animating = true;
		break;
	}
	
	// Inform player of death
	start_dialog(ob_dialog, ob_dialog.d_hole_text);
}