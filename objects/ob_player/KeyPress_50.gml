/// @description changes to red
// You can write your code in this editor
if(hasColor[2] == true && !max(keyboard_check(vk_space),keyboard_check_released(vk_space)))
{
	color = 2;
	ob_player.sprite_index = spr_pc_red;
}