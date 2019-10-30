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
if (jump_target_inst == noone){
	jump_target_inst = instance_create_depth(x2,y2,-3600,ob_jump_target);
	//show_message("created");
}
else {
	if (jump_target_inst.image_alpha == 0){
		jump_target_inst.image_alpha = 1;
	}
	// move and scale the target
	jump_target_inst.x = x2;
	jump_target_inst.y = y2;
	
	if (image_xscale = 0.5 && jump_target_inst.image_xscale = 1)
	{
		scr_scale_current_sprite(false, jump_target_inst);
	} 
	else if (image_xscale = 1 && jump_target_inst.image_xscale = 0.5)
	{
		scr_scale_current_sprite(true, jump_target_inst);
	}
}

// Jump has been tested for safety, commense
if (keyboard_check_released(vk_space)) 
{
	// Splash color in start location
	var splat = instance_create_depth(x,y, paint_layer, ob_ability_splat);
	paint_layer--;
	if (paint_layer == 0) 
	{
		paint_layer = 1599;
	}
	splat.image_blend = make_color_rgb(93, 240, 96);
	splat.image_xscale = 2;
	splat.image_yscale = 2;
	x = x2;
	y = y2;
	can_jump = false;
	alarm_set(0,30);
	// Remove target's visability
	if (jump_target_inst != noone) 
		jump_target_inst.image_alpha = 0;
	// Splash color in end location
	splat = instance_create_depth(x,y, paint_layer, ob_ability_splat);
	paint_layer--;
	if (paint_layer == 0) 
	{
		paint_layer = 1599;
	}
	splat.image_blend = make_color_rgb(93, 240, 96);
	splat.image_xscale = 2;
	splat.image_yscale = 2;
}
