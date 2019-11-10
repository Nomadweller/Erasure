// This script will shrink the player if called when the player is  normal-sized, and will start a timer
// Once the timer is up, another function  will return the player to normal size.

scr_scale_current_sprite(false, self); // shrinking and growing of more sprites is done in scr_animate_walk and in Alarm 1

can_shrink = false;
shrunk = true;

var splat = instance_create_depth(x,y, paint_layer, ob_ability_splat);
paint_layer--;
if (paint_layer == 0) {
	paint_layer = 1599;
}
splat.image_blend = make_color_rgb(242, 75, 41);
splat.image_xscale = 2;
splat.image_yscale = 2;

alarm_set(1,350);