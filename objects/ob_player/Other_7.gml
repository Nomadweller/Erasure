/// @Triggers effects of abilities that just finished animating

animating = false;


var current_sprite_name = sprite_get_name(sprite_index);

if(string_pos("spr_pc_jump", current_sprite_name) != 0){
	// Finish the jump effects
	can_jump = false;
	alarm_set(0,30);
	
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
	
	sprite_index = spr_pc_grn;

}

if (string_pos("to_grn", current_sprite_name) != 0){
	color = 1;
	ob_player.sprite_index = spr_pc_grn;
}
if (string_pos("to_red", current_sprite_name) != 0){
	color = 2;
	ob_player.sprite_index = spr_pc_red;
}
if (string_pos("to_blu", current_sprite_name) != 0){
	color = 3;
	ob_player.sprite_index = spr_pc_blu;
}
	