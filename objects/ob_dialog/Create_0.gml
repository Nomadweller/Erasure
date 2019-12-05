persistent = true;

dialog = [];
dialogLine = 0;

d_intro_text = 
add_dialog("In a world washed away, you need someone to help you along the way. Everything looks so plain...", true);
add_dialog("Hey! Over here! Can you find your way? Use your arrow keys!", true, spr_avatar_green, false);
add_dialog("I have something that might help you get where you're going.", false, spr_avatar_green, false);

d_green_text = 
add_dialog("My friends all wandered off and got lost... I can't see without them.", true, spr_avatar_green_sad, false);
add_dialog("Can you help me find them? I don't think I can do it without you...", true, spr_avatar_green_sad, false);
add_dialog("I can give you something to help, you just need to take a leap of faith.", true, spr_avatar_green, false);
add_dialog("Hold space and aim to cross the gap. Don't forget, \"1\" will always turn you green.", true, spr_avatar_green, false);
add_dialog("Go brighten up the world!", false, spr_avatar_green, false);

d_red_text = 
add_dialog("Hey, watch it!! Don't step on me!", true, spr_avatar_red_sad, true);
add_dialog("... Sorry, I'm just really very hungry.", true, spr_avatar_red_sad, true);
add_dialog("The only food I could find around here is across that gap...", true, spr_avatar_red_sad, true);
add_dialog("The gap in the floor is way too big for me to cross. I can make helping me worth your while.", true, spr_avatar_red_sad, true);
add_dialog("Get the cheese and meet me on the other side of the room.", true, spr_avatar_red_sad, true);
add_dialog("Hurry!", false, spr_avatar_red_sad, true);

d_red_text_wo_cheese = 
add_dialog("Yeah?", true, spr_avatar_red_sad, true);
add_dialog("Did you get it?", true, spr_avatar_red_sad, true);
add_dialog("No? I really need it.", true, spr_avatar_red_sad, true);
add_dialog("If you'll help me, I'll be over there.", false, spr_avatar_red_sad, true);


d_red_text_w_cheese = 
add_dialog("Oh, you actually got it for me? ...", true, spr_avatar_red, true);
add_dialog("Thank you... Now listen up!", true, spr_avatar_red, true);
add_dialog("If you press 2 and space, you can fit into small places, just like me.", true, spr_avatar_red, true);
add_dialog("Being small is no small feat, use it with all your might! Thank you again.", false, spr_avatar_red, true);



d_blue_text = 
add_dialog("Oh, I thought they were behind me...", true, spr_avatar_blue_sad, true);
add_dialog("...", true, spr_avatar_blue_sad, true);
add_dialog("Oh, hello... You look awfully bright... Can you help me out? ...", true, spr_avatar_blue_sad, true);
add_dialog("I can't see without my friends, and I need to map this area before I can move on...", true, spr_avatar_blue_sad, true);
add_dialog("I don't have much to offer... Do you think you could explore for me?", false, spr_avatar_blue_sad, true);

d_blue_text_not_explored = 
add_dialog("I can't see everything yet... Are you sure you looked everywhere?", true, spr_avatar_blue_sad, true);
add_dialog("It looks so blank...", true, spr_avatar_blue_sad, true);
add_dialog("I can't do it without you.", false, spr_avatar_blue_sad, true);

d_blue_text_explored = 
add_dialog("Oh, you really know how to light up a room. How did you learn to do that?", true, spr_avatar_blue, true);
add_dialog("You met them? I think you must have rubbed off on each other. I can tell.", true, spr_avatar_blue, true);
add_dialog("I know I don't have much, but I can teach you something...", true, spr_avatar_blue, true);
add_dialog("Press three, hold space, and aim at certain walls to break through them.", true, spr_avatar_blue, true);
add_dialog("Thank you for making this a much brighter place.", false, spr_avatar_blue, true);

d_hole_text = 
add_dialog("Mind the gap!");
