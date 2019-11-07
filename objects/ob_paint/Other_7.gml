// makes the animation of this  sprite stop when paint  is done splattering
image_index = image_number -1;
image_speed = 0;
// change more wall
if(place_meeting(x,y,ob_wall)) {
	var wall = instance_place(x,y,ob_wall);
	scr_wall_change(wall);	
}