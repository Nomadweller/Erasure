// Check if player is within boundaries
// In the case of falling, restart level

if (place_meeting(x,y,ob_player)){
	show_message("Mind the inconveinent hole in the floor.")
	// inform player of death
	scr_room_reset();
	room_restart();
}