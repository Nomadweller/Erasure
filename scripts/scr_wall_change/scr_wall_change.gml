player = instance_nearest(x,y, ob_player)
wall = instance_nearest(x,y, ob_wall)
var wall = argument0;

	if(object_is_ancestor(wall.object_index, ob_wall))
	{
		if(object_is_ancestor(wall.object_index, ob_interactable_wall))
		{
			if(wall.isKey == false) 
			{
				wall.sprite_index = sp_linked_wall_chain;
			}
			else
			{
				wall.sprite_index = sp_linked_wall_key;
			}
		}
		else if(wall.object_index == ob_obj_wall)
		{
		if(wall.sprite_index == sp_white_wall)
			player.paintedWallCount++;		
		if(player.paintedWallCount == 76)
		{
			hasExplored = true;
		}
		    
		wall.sprite_index = sp_wall;
		}
		else
		{
		wall.sprite_index = sp_int_wall;
		}
	}
	else
	{
		wall.sprite_index = sp_wall;
	}
	
	
	switch (player.color)
	{
		case 1 : 
		wall.image_blend = make_color_rgb(93, 240, 96);
		break;
		case 2:
		wall.image_blend = make_color_rgb(242, 75, 41);
		break;
		case 3:
		wall.image_blend = c_blue;
		break;
		default:
		// Don't change it
		break;
	}


