/// @description when animation comes to end.
// destroy self and  stop  the  player animating (parent)
var current_sprite_name = sprite_get_name(sprite_index);
if(string_pos("sp_etherial_blast", current_sprite_name) != 0){
	parent.animating = false;
	parent.can_traverse = true;
	instance_destroy();
}
