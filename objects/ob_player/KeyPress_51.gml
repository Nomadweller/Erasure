/// @description changes to blue
// You can write your code in this editor
if(hasColor[3] == true && !max(keyboard_check(vk_space),keyboard_check_released(vk_space)))
{
	color = 3;
	ob_player.sprite_index = spr_pc_blu;
}