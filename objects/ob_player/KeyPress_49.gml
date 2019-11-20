/// @description changes to green
// You can write your code in this editor
if(hasColor[1] == true && !max(keyboard_check(vk_space),keyboard_check_released(vk_space)))
{
	
	switch(color){
		case 0: 
		//swap from white
		sprite_index  = spr_pc_wht_to_grn;
		animating = true;
		break;
		case 1:
		//swap from green, do nothing
		break;
		case 2:
		//swap from red
		sprite_index  = spr_pc_red_to_grn;
		animating = true;
		break;
		case 3:
		//swap from blue
		sprite_index  = spr_pc_blu_to_grn;
		animating = true;
		break;
		default:
		color = 2;
		sprite_index = spr_pc_grn;
		animating = true;
		break;
	}
	
}