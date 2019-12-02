switch(menu_index)  {
	
	case 0:
		room_goto(Level1);
		break;
	case 1:
		room_goto(Controls);
		break;
	case 2:
		room_goto(Credits)
		break;
	case 3:
		game_end();
		break;


}

