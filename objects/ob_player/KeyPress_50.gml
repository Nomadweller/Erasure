/// @description changes to red
// You can write your code in this editor
if(hasColor[2] == true && !max(keyboard_check(vk_space),keyboard_check_released(vk_space)))
{
	switch(color){
		case 1:
		//swap from green
		sprite_index  = spr_pc_grn_to_red;
		animating = true;
		break;
		case 2:
		//swap from red, do nothing
		break;
		case 3:
		//swap from blue
		sprite_index  = spr_pc_blu_to_red;
		animating = true;
		break;
		default:
		color = 2;
		sprite_index = spr_pc_red;
		animating = true;
		break;
	}
	animating = true;
}