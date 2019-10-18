player = instance_nearest(x,y, ob_player)
wall = instance_nearest(x,y, ob_wall)

	if(object_is_ancestor(wall.object_index, ob_wall))
	{
		wall.sprite_index = sp_int_wall;
	}
	switch (player.color)
	{
		case 1 : 
		wall.image_blend = make_color_rgb(93, 240, 96);
		break;
		case 2:
		wall.image_blend = make_color_rgb(242, 75, 41);
		break
		case 3:
		wall.image_blend = c_blue;
		break
		default:
		break;
	}


