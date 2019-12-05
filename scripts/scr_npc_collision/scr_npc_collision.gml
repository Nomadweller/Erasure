//Check for a specific instance at location x,y
inst = instance_place(x,y,ob_npc);

if (inst != noone && !hasColor[inst.Color_ID] && room != Credits2) {
	x_spd = 0;
	y_spd = 0;
	// Change the player's color to match
	switch(inst.Color_ID){
		case 1:
		start_dialog(ob_dialog, ob_dialog.d_green_text);
		hasColor[inst.Color_ID] = true;
		break;
		case 2:
		if(ob_npc.x < 799)
			{
			start_dialog(ob_dialog, ob_dialog.d_red_text);
			ob_npc.x = 800;
			ob_npc.y = 530;
			}
		else
			{
			if(hasCheese)
				{
				start_dialog(ob_dialog, ob_dialog.d_red_text_w_cheese);
				hasColor[inst.Color_ID] = true;
				}
			else
				start_dialog(ob_dialog, ob_dialog.d_red_text_wo_cheese);
			}
		break;
		case 3:
		if(!ob_player.shownMessage)
		{
			start_dialog(ob_dialog, ob_dialog.d_blue_text);
			ob_player.timedDelayActive = true;
			ob_player.shownMessage = true;
			ob_player.alarm[3] = 180;
		}
		else
		{
		if(!ob_player.timedDelayActive)
		{
			if(hasExplored)
			{
				start_dialog(ob_dialog, ob_dialog.d_blue_text_explored);
				ob_player.timedDelayActive = true;
				ob_player.alarm[3] = 180;
				hasColor[inst.Color_ID] = true;	
			}
			else
				start_dialog(ob_dialog, ob_dialog.d_blue_text_not_explored);
				ob_player.timedDelayActive = true;
				ob_player.alarm[3] = 180;
			}
		}
		break;
	}
}