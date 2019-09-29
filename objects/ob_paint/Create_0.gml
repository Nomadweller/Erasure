/// @description Insert description here
// You can write your code in this editor
inst = instance_nearest(x,y,ob_player);

if (inst.color == 1) {
	if (inst.delta_x > inst.delta_y) {
		sprite_index = spr_horizontal_grn;
	}
	else {
		sprite_index = spr_vertical_grn;
	}
}
else if (inst.color == 2) {
	if (inst.delta_x > inst.delta_y) {
		sprite_index = spr_horizontal_red;
	}
	else {
		sprite_index = spr_vertical_red;
	}
}
else if (inst.color == 3) {
	if (inst.delta_x > inst.delta_y) {
		//sprite_index = spr_horizontal_grn;
	}
	else {
		//sprite_index = spr_vertical_grn;
	}
}