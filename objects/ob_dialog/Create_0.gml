persistent = true;

dialog = [];
dialogLine = 0;

d_intro_text = 
add_dialog("In a world washed away sometimes you need a friend to help your day.", true);
add_dialog("Hello there, why do you look go grey? Come over here using your arrow keys.", true, spr_avatar_green, false);
add_dialog("I have something that will certainly brighten up your day.", false, spr_avatar_green, false);

d_green_text = 
add_dialog("Hey there new friend. I need your help, everything these days feels so plain. ", true, spr_avatar_green, false);
add_dialog("I love the color green and I'd love you to help me brighten up this world with it.", true, spr_avatar_green, false);
add_dialog("Take a LEAP of faith with the space bar and this color green to reach places that were unreachable.", true, spr_avatar_green, false);
add_dialog("Along the way you may find new colors, but remember \"1\" will always transform you back to green.", true, spr_avatar_green, false);
add_dialog("Now paint the world friend!", false, spr_avatar_green, false);

d_red_text = 
add_dialog("I am red. Have a cool SHRINK power! Swap to it with \"2\".", true, spr_avatar_red, true);
add_dialog("End", false, spr_avatar_red, true);

d_blue_text = 
add_dialog("I am blue. I'll help you walk through ETHERIAL walls. Try it with \"3\".", true, spr_avatar_red, true);
add_dialog("End", false, spr_avatar_blue, true);

d_hole_text = 
add_dialog("Oops, looks like you fell down a hole, there!");
