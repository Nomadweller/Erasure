var i = 0;
repeat (buttons) {
	
	draw_set_font(FontMenu);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	

last_selected = menu_index;

	
	if (menu_index == i) draw_set_color(c_red);
	

	if menu_index == i {
		instance_create_depth(menu_x, menu_y + button_h * i + 50, 1, ob_splat);
		}
		
	draw_text(menu_x, menu_y + button_h * i, button[i]);
	i++;
	
}
