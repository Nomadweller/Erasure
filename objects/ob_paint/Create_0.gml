/// @description Insert description here
// You can write your code in this editor
inst = instance_nearest(x,y,ob_player);
//changes color of wall
scr_wall_change();

if (inst.color == 1) {
	if (inst.delta_x > inst.delta_y) {
		sprite_index = spr_horizontal_white;
		image_blend = make_color_rgb(211,255,240);
		//sprite_index = spr_horizontal_grn;
	}
	else {
		sprite_index = spr_horizontal_white;
		image_blend = make_color_rgb(211,255,240);
	}
}
else if (inst.color == 2) {
	if (inst.delta_x > inst.delta_y) {
		sprite_index = spr_horizontal_white;
		image_blend = c_red;

	}
	else {
		sprite_index = spr_horizontal_white;
		image_blend = c_red;
	}
}
else if (inst.color == 3) {
	if (inst.delta_x > inst.delta_y) {
		sprite_index = spr_horizontal_white;
		image_blend = c_blue;

	}
	else {
		sprite_index = spr_horizontal_white;
		image_blend = c_blue;

	}
}
