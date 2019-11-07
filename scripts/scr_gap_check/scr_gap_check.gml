// Check if player is within boundaries
// In the case of falling, restart level

if (place_meeting(x,y,ob_player)){
	start_dialog(ob_dialog, ob_dialog.d_hole_text);
	// inform player of death
	room_restart();
}