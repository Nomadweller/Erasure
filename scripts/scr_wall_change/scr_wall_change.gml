player = instance_nearest(x,y, ob_player)
wall = instance_nearest(x,y, ob_wall)

if(place_meeting(x,y,ob_wall))
{
	switch (player.color)
	{
		case 1 : 
		wall.image_blend = make_color_rgb(211,255,240);
		break;
		case 2:
		wall.image_blend = c_red;
		break
		case 3:
		wall.image_blend = c_blue;
		break
		default:
		break;
	}
}