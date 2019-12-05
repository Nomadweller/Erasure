var beamInstance;

if (!instance_exists(ob_ethereal_beam))	{
beamInstance = instance_create_depth(x,y-44, 0, ob_ethereal_beam);
beamInstance.parent = self;
beamInstance.image_alpha = 0.7;
}
else {
	beamInstance = instance_nearest(x,y,ob_ethereal_beam);
	//beamInstance.image_alpha = 0.7;
	//beamInstance.x = x;
	//beamInstance.y = y-44;
}

if(x_dir > 0)
{
	beamInstance.image_alpha = 0.7;
	beamInstance.image_angle = 180;
}
else if(x_dir < 0)
{
	beamInstance.image_alpha = 0.7;
	beamInstance.image_angle = 0;
}
else if(y_dir > 0)
{
	beamInstance.image_alpha = 0.7;
	beamInstance.image_angle = 90;
}
else if(y_dir < 0)
{
	beamInstance.image_alpha = 0.7;
	beamInstance.image_angle = 270;
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
	splat.image_xscale = 1.4;
	splat.image_yscale = 1.4;
	// perform animation
	animating = true;
	can_traverse = false;
	beamInstance.sprite_index = sp_etherial_blast;
	beamInstance.image_index = 0;
	beamInstance.image_alpha = 1;
}
