//Check for a specific instance at location x,y
inst = instance_place(x,y,ob_npc);

if (inst != noone && !hasColor[inst.Color_ID]) {
	x_spd = 0;
	y_spd = 0;
	// Change the player's color to match
	switch(inst.Color_ID){
		case 1:
		ob_player.sprite_index = spr_pc_grn;
		start_dialog(ob_dialog, ob_dialog.d_green_text);
		break;
		case 2:
		ob_player.sprite_index = spr_pc_red;
		start_dialog(ob_dialog, ob_dialog.d_red_text);
		break;
		case 3:
		ob_player.sprite_index = spr_pc_blu;
		start_dialog(ob_dialog, ob_dialog.d_blue_text);
		break;
	}
	color = inst.Color_ID;
	//register ability get
	hasColor[inst.Color_ID] = true;
}