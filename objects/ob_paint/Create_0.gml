/// @description Insert description here
// You can write your code in this editor
inst = instance_nearest(x,y,ob_player);
//changes color of wall
if(place_meeting(x,y,ob_wall)) {
var wall = instance_place(x,y,ob_wall);
scr_wall_change(wall);	
}

if (inst.color == 1) {
	if (inst.delta_x > inst.delta_y) {
		sprite_index = spr_horizontal_white;
		image_blend = make_color_rgb(93, 240, 96);
		//sprite_index = spr_horizontal_grn;
	}
	else {
		sprite_index = spr_horizontal_white;
		image_blend = make_color_rgb(93, 240, 96);
	}
}
else if (inst.color == 2) {
	if (inst.delta_x > inst.delta_y) {
		sprite_index = spr_horizontal_white;
		image_blend = make_color_rgb(242, 75, 41);

	}
	else {
		sprite_index = spr_horizontal_white;
		image_blend = make_color_rgb(242, 75, 41);
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
