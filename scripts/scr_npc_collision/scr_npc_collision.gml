//Check for a specific instance at location x,y
inst = instance_place(x,y,ob_npc);

if (inst != noone && !shownMessage) {
	x_spd = 0;
	y_spd = 0;
	// Change the player's color to match
	ob_player.sprite_index = spr_pc_grn;
	color = 1;
	// Talk to the NPC
	show_message("You can now paint the town red!... and also jump, try it, press space, you know that thing you have... space. Oh and maybe also 1 and 2.")
	shownMessage = true;
}