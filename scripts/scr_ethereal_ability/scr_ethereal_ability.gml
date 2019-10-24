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
	// affect walls.
/*    wall = instance_nearest(x,y, ob_interactable_wall);
	if(beamInstance.touchingWall == true)
	{
		//checks linked walls
		if(object_is_ancestor(wall.object_index, ob_interactable_wall))
		{
			if(wall.isKey == true)
			{
			if(ob_interactable_linked_wall_lock.isEthereal == false) {
			//placeholder for ethreal sprite wall
			ob_interactable_linked_wall_lock.image_alpha = .2;
			ob_interactable_linked_wall_lock.isEthereal = true; 
			} else {
			ob_interactable_linked_wall_lock.image_alpha = 1;
			ob_interactable_linked_wall_lock.isEthereal = false
			}
			}
		}
		else {
		if(wall.isEthereal == false) {
		//placeholder for ethreal sprite wall
		wall.image_alpha = .2;
		wall.isEthereal = true; 
		} else {
			wall.image_alpha = 1;
			wall.isEthereal = false
		}
		}	
	}*/
	instance_destroy(ob_ethereal_beam);	
}

