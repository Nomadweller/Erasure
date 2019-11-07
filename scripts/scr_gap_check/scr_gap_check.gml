// Check if player is within boundaries
// In the case of falling, restart level

if (place_meeting(x,y,ob_player)){

	// Reset player to checkpoint
	var player = instance_nearest(x,y,ob_player);
	player.x = player.check_x;
	player.y = player.check_y;
	
	//forget where we may have  been jumping
	player.jump_dest_x = x;
	player.jump_dest_y = y;
	// inform player of death
	start_dialog(ob_dialog, ob_dialog.d_hole_text);
}