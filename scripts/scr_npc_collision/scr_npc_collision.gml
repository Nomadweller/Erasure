//Check for a specific instance at location x,y
inst = instance_place(x,y,ob_npc);

if ((inst != noone && !shownMessage)) {
	x_spd = 0;
	y_spd = 0;
	// Change the player's color to match
	ob_player.sprite_index = spr_pc_grn;
	color = 1;
	// Talk to the NPC
	show_message("Hello Painter Apprentice, take these colors and make the world beautiful again. Be aware to paint the world you will need to use different colors to get through the lands. You can change colors with 1,2 and 3, and truly use the color with spacebar. Now, fill the walls and floor with life again.");
	shownMessage = true;
}