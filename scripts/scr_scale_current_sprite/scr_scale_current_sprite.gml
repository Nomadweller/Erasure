// WARNING: This will only affect the sprite the player is currently using, not all sprites that they may switch to.
var grow = argument0 // should be false for shrink, and true for grow.
var instance = argument1

var yoff = sprite_get_yoffset(instance.sprite_index);
var xoff = sprite_get_xoffset(instance.sprite_index);

sprite_set_offset(instance.sprite_index, xoff, yoff);

if (grow)
{
	// TODO: fix edge case when shrunk in etherial wall.
	instance.image_xscale = 1;
	instance.image_yscale = 1;
	sprite_set_offset(instance.sprite_index, xoff,yoff);
	if (place_meeting(x,y, ob_wall)) //Don't re-grow if it would cause collision.
	{  
		scr_scale_current_sprite(false, instance);
	}
}
else 
{
	instance.image_xscale = 0.5;
	instance.image_yscale = 0.5;
	sprite_set_offset(instance.sprite_index, xoff,yoff);
}