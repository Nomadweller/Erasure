// Script that will play the jump animation for the player, trigger color splash, and move the player.


// Target where the jump will land the player. 
var modified_jump = 0;
var x1 = x;
var x2 = x + (sign(x_dir) * jump_distance);
var y1 = y;
var y2 = y + (sign(y_dir) * jump_distance);

if (x1 == x2){
	// adjust y-jump
	while (!place_meeting(x1,y1+(sign(y_dir) * modified_jump), ob_wall)) {
		modified_jump++;
		if (modified_jump == jump_distance) {
			break;
		}
	}
}
else if (y1 == y2){
	// adjust x-jump
	while (!place_meeting(x1+(sign(x_dir) * modified_jump),y1, ob_wall)) {
		modified_jump++;
		if (modified_jump == jump_distance) {
			break;
		}
	}
}
else {
	// Jump is diagonal, scale it diagonally
	while (!place_meeting(x1+(sign(x_dir)*modified_jump),y1+(sign(y_dir)*modified_jump), ob_wall)) {
		modified_jump++;
		if (modified_jump == jump_distance) {
			break;
		}
	}
}

x2 = x1 + sign(x_dir) * modified_jump;
y2 = y1 + sign(y_dir) * modified_jump;

// Project jump destination
if (!instance_exists(jump_target_inst)){
	jump_target_inst = instance_create_layer(x2,y2,"Level_instances",ob_jump_target);
}
else {
	if (jump_target_inst.image_index == 1){
		jump_target_inst.image_index = 0;
	}
	// move the target
	jump_target_inst.x = x2;
	jump_target_inst.y = y2;
}


// Jump has been tested for safety, commense
if (keyboard_check_released(vk_space)) {
	// Splash color in start location
	instance_create_depth(x,y, 1,ob_jump_splat);
	x = x2;
	y = y2;
	can_jump = false;
	alarm_set(0,30);
	// Remove target's visability
	jump_target_inst.image_index = 1;
	// Splash color in end location
	instance_create_depth(x,y, 1,ob_jump_splat);
}


