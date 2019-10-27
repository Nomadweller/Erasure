// WARNING: This will only affect the sprite the player is currently using, not all sprites that they may switch to.
var grow = argument0 // should be false for shrink, and true for grow.

var yoff = sprite_get_yoffset(sprite_index);
var xoff = sprite_get_xoffset(sprite_index);

sprite_set_offset(sprite_index, xoff, yoff);

if (grow)
{
	// TODO: fix edge case when shrunk in etherial wall.
	image_xscale = 1;
	image_yscale = 1;
	sprite_set_offset(sprite_index, xoff,yoff);
	if (place_meeting(x,y, ob_wall))//Don't re-grow if it would cause collision.
	{  
		scr_scale_current_sprite(false);
	}
}
else 
{
	image_xscale = 0.5;
	image_yscale = 0.5;
	sprite_set_offset(sprite_index, xoff,yoff);
}