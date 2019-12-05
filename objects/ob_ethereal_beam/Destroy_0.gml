var beamInstance = ob_ethereal_beam;
listOfWalls = ds_list_create();
numOfWall = instance_place_list(x, y, ob_interactable_wall, listOfWalls, true);
	if numOfWall > 0
    {
    for (var i = 0; i < numOfWall; ++i;)
    {
    var wall = ds_list_find_value(listOfWalls, i);   
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
			if(wall.isEthereal == false && wall.animating == false) {
			
				// play change animation
				wall.sprite_index = sp_int_wall_anim;
				wall.animating = true;
			
			} else if (wall.animating == false){
				wall.image_alpha = 1;
				wall.isEthereal = false;
				sprite_index = sp_int_wall;
			}
		}	
	}
        }
    }


ds_list_destroy(listOfWalls);