/// @description Insert description here
// You can write your code in this editor
if (!animating){
	// Register inputs
	scr_input();

	// Use abilities
	scr_activate_ability();

	// Move the player
	scr_force_movement();

	// Animate movement
	scr_animate_walk();

	// Interact with NPCs
	scr_npc_collision();
}
scr_animation_actions();

