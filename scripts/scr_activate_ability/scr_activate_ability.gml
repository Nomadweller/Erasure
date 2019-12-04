// Script for checking when an ability has been triggered and calling the proper function
if (ability  && !animating)
{
	if ((color == 1) && can_jump) {
		// The Jump ability has been activated
		scr_jump_ability();
	}
	if ((color == 2) && can_shrink) {
		// The scale ability has been activated
		scr_shrink_ability();
	}
	if ((color == 3) && can_traverse) {
		// The etherial ability has been activated
		scr_ethereal_ability();
	}
}


