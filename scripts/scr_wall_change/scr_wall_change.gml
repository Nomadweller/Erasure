player = instance_nearest(x,y, ob_player)
wall = instance_nearest(x,y, ob_wall)
var wall = argument0;

	if(object_is_ancestor(wall.object_index, ob_wall))
	{
		if(object_is_ancestor(wall.object_index, ob_interactable_wall))
		{
			//show_message("test");
			if(wall.isKey == false) 
			{
				wall.sprite_index = sp_linked_wall_chain;
			}
			else
			{
				wall.sprite_index = sp_linked_wall_key;
			}
		
		}
		else
		{
		wall.sprite_index = sp_for_dev_int_wall;
		}
	}
	else
	{
		//wall.sprite_index = sp_for_dev;
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


