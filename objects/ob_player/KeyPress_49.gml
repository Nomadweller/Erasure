/// @description changes to green
// You can write your code in this editor
if(hasColor[1] == true && !max(keyboard_check(vk_space),keyboard_check_released(vk_space)))
{
	color = 1;
	ob_player.sprite_index = spr_pc_grn;
}