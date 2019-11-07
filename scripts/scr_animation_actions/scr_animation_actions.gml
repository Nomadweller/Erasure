var current_sprite_name = sprite_get_name(sprite_index);

if(animating && image_index >= 7 && string_pos("spr_pc_jump", current_sprite_name) != 0){
	x = jump_dest_x;
	y = jump_dest_y;
	jump_dest_x = x;
	jump_dest_y = y;
}