
// Do not move if aiming jump
if (ability && color = 1){
	return;
}

//Set x direction
x_dir = right-left;
y_dir = down-up;

//Apply accel to speed us up and drag to slow

// Apply X acceleration
if (x_dir != 0) {
	x_spd += accel * x_dir;
	// Allow player to stop on a dime.
	if (sign(x_dir) != sign (x_spd)) 
		x_spd = 0;
}
else {
	if abs(x_spd) > drag 
		x_spd -= sign(x_spd) * drag;
	else x_spd = 0;
}

// Apply Y acceleration
if (y_dir != 0) {
	y_spd += accel * y_dir;
	// Allow player to stop on a dime.
	if (sign(y_dir) != sign (y_spd)) 
		y_spd = 0;
}
else {
	if abs(y_spd) > drag 
		y_spd -= sign(y_spd) * drag;
	else y_spd = 0;
}

// Apply Movement (but only up to max)
if (abs(x_spd) > max_spd) {
	x_spd = max_spd*sign(x_spd);
}
if (abs(y_spd) > max_spd) {
	y_spd = max_spd*sign(y_spd);
}
var moved = false;
// X collisions
if place_meeting(x+x_spd,y,ob_wall) {
	while (!place_meeting(x+sign(x_spd),y,ob_wall)) {
		x += sign(x_spd);
	}
	x_dir = 0;
}
else {
	// Move normally
	x+= x_spd;
	moved = true;
}
// Y collisions
if place_meeting(x,y+y_spd,ob_wall) {
	while (!place_meeting(x,y+sign(y_spd),ob_wall)) {
		y += sign(y_spd);
	}
	y_spd = 0;
}
else {
	// Move normally
	y += y_spd;
	moved = true;
}

if (moved) {
	// Paint ground
	if(ob_player.sprite_index != spr_pc) {
		instance_create_depth(x,y,1, ob_paint); // imprtant
	}
	if(place_meeting(x,y, ob_end_goal)) {
		show_message("You did it! You know I always belived in you and your space pressing ability. Let's do it again.");
		game_restart();
	}
	
}