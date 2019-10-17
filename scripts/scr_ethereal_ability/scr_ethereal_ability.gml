var beamInstance = ob_ethereal_beam;
var wall;

instance_create_depth(x,y, 0, beamInstance);

if(x_dir > 0)
{
	beamInstance.image_alpha = 1;
	beamInstance.image_angle = 270;
}
else if(x_dir < 0)
{
	beamInstance.image_alpha = 1;
	beamInstance.image_angle = 90;
}
else if(y_dir > 0)
{
	beamInstance.image_alpha = 1;
	beamInstance.image_angle = 180;
}
else if(y_dir < 0)
{
	beamInstance.image_alpha = 1;
	beamInstance.image_angle = 0;
}
else if(x_dir == 0 & y_dir == 0) 
{
	 beamInstance.image_alpha = 0;
}

if(keyboard_check_released(vk_space))
	{
	    wall = instance_nearest(x,y, ob_interactable_wall);
		if(beamInstance.touchingWall == true)
		{
			
			if(wall.isEthereal == false) {
			//placeholder for ethreal sprite wall
			wall.image_blend = make_color_rgb(240,240,240);
			wall.isEthereal = true; }
			else {
			wall.image_blend = make_color_rgb(0,0,0);
			wall.isEthereal = false}
		}
		instance_destroy(ob_ethereal_beam);		
	}

