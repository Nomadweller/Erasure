//Check for a specific instance at location x,y
inst = instance_place(x,y,ob_npc);

if (inst != noone && !hasColor[inst.Color_ID]) {
	x_spd = 0;
	y_spd = 0;
	// Change the player's color to match
	switch(inst.Color_ID){
		case 1:
		ob_player.sprite_index = spr_pc_grn;
		show_message("Hooray! you have now learned to paint GREEN :), You can press 1 to get back to green.");
		break;
		case 2:
		ob_player.sprite_index = spr_pc_red;
		show_message("Hooray! you have now learned to paint RED :), You can press 2 to get back to red.");
		break;
		case 3:
		ob_player.sprite_index = spr_pc_blu;
		show_message("Hooray! you have now learned to paint BLUE :), You can press 3 to get back to blue.");
		break;
	}
	color = inst.Color_ID;
	//register ability get
	hasColor[inst.Color_ID] = true;
}