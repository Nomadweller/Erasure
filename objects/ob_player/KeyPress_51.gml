/// @description changes to blue
// You can write your code in this editor
if(hasColor[3] == true && !max(keyboard_check(vk_space),keyboard_check_released(vk_space)))
{
	switch(color){
		case 1:
		//swap from green
		sprite_index  = spr_pc_grn_to_blu;
		break;
		case 2:
		//swap from red, do nothing
		sprite_index  = spr_pc_red_to_blu;
		break;
		case 3:
		//swap from blue, do nothing
		break;
		default:
		color = 2;
		ob_player.sprite_index = spr_pc_blu;
		break;
	}
	animating = true;
}