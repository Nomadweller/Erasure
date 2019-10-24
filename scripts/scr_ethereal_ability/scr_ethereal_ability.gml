var beamInstance = ob_ethereal_beam;
var wall;

if (!instance_exists(ob_ethereal_beam))	{
instance_create_depth(x,y, 0, beamInstance);
}

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
	// splatter floor
	splat = instance_create_depth(x,y, paint_layer, ob_ability_splat);
	paint_layer--;
	if (paint_layer == 0) {
		paint_layer = 1599;
	}
	splat.image_blend = c_blue;
	splat.image_xscale = 2;
	splat.image_yscale = 2;
	instance_destroy(ob_ethereal_beam);	
}

