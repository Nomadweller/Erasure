//Check for a specific instance at location x,y
inst = instance_place(x,y,ob_npc);

if (inst != noone && !hasColor[inst.Color_ID]) {
	x_spd = 0;
	y_spd = 0;
	// Change the player's color to match
	switch(inst.Color_ID){
		case 1:
		start_dialog(ob_dialog, ob_dialog.d_green_text);
		break;
		case 2:
		start_dialog(ob_dialog, ob_dialog.d_red_text);
		break;
		case 3:
		start_dialog(ob_dialog, ob_dialog.d_blue_text);
		break;
	}
	//register ability get
	hasColor[inst.Color_ID] = true;
}