
// Do not move if aiming jump, aiming ray, dialog is moving, or player is animating
if (ability && color = 1 ||
	instance_exists(ob_dialog_controller) ||
	ability && color = 3 || 
	animating)
{
	return;
}

//Set x direction
x_dir = right-left;
y_dir = down-up;
// Set up movement tracker
delta_x = x;
delta_y = y;
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

// X collisions
if place_meeting(x+x_spd,y,ob_wall) {
	var wall = instance_place(x + x_spd,y,ob_wall);
	scr_wall_change(wall);
	if (object_is_ancestor(wall.object_index, ob_wall)) {
		if(wall.isEthereal) {
		x+= x_spd; }
	}
	else {
		while (!place_meeting(x+sign(x_spd),y,ob_wall)) {
			x += sign(x_spd);
		}
	}
}
else {
	// Move normally
	x+= x_spd;
}
// Y collisions
if place_meeting(x,y+y_spd,ob_wall) {
	var wall = instance_place(x,y+y_spd,ob_wall);
	scr_wall_change(wall);
	if (object_is_ancestor(wall.object_index, ob_wall)) {
		if(wall.isEthereal) {
		y+= y_spd; }
	}
	else {
		while (!place_meeting(x,y+sign(y_spd),ob_wall)) {
			y += sign(y_spd);
		}
	}
}
else {
	// Move normally
	y += y_spd;
}

delta_y = abs(delta_y - y);
delta_x = abs(delta_x - x);
if (delta_y + delta_x > 0){
	deltaMovement++;
}

if (deltaMovement > 10) {
	// Paint ground
	var current_sprite_name = sprite_get_name(sprite_index);
	
	if(string_pos("wht", current_sprite_name) == 0) {
		instance_create_depth(x,y,paint_layer, ob_paint);
		paint_layer--;
		if (paint_layer == 0) {
			paint_layer = 1599;
		}
	}
	deltaMovement = 0;
}
// tutorial stuff: 
if(place_meeting(x,y, ob_end_goal)) {
	if	(room == Level6) {
		game_restart();
		}
	else {
		room = room_goto_next();
		room_goto_next();
	}
}

