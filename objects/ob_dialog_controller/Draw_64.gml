if(!fetch)
{
	draw_set_font(fontDialog);
	
	var x_offset = 0;
	if(dialogAvatar != "")
	{
		if(dialogLeft)
		{
			x_offset = -32;
		}
		else
		{
			x_offset = 32;	
		}
	}
	var x_pos = camera_get_view_width(view_camera[0]) / 2 - 96 - x_offset;
	var y_pos = camera_get_view_height(view_camera[0]) - 100;
	
	//draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_sprite(spr_dialog_box, 0, x_pos, y_pos);
	draw_text_ext(x_pos + 10, y_pos + 6, string_hash_to_newline(dialogOutput), 16, 175);
	
	if(dialogAvatar != "")
	{
	if(dialogLeft)
	{
		draw_sprite(spr_portrait_box, 1, x_pos - 61, y_pos);
		draw_sprite(dialogAvatar, 0 , x_pos - 56, y_pos + 4);
	}
	else
	{
		draw_sprite(spr_portrait_box, 0, x_pos + 186, y_pos);
		draw_sprite_ext(dialogAvatar, 0 , x_pos + 248, y_pos + 4, -1, 1, 0 , c_white, 1);
	}
	}
}