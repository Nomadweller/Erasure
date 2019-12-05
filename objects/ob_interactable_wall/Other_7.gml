
var current_sprite_name = sprite_get_name(sprite_index);

if (string_pos("anim", current_sprite_name) != 0){
	animating = false;
	sprite_index = sp_int_wall_eth;
	//placeholder for ethreal sprite wall
	image_alpha = .2;
	isEthereal = true; 
}