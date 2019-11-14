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
add_dialog("Hi Friend....", true, spr_avatar_red, true);
add_dialog("Sorry, I'm just really hungry, and I'm stuck here with no food.", true, spr_avatar_red, true);
add_dialog("Well actually there is food, there is CHEEZ! but I can only smell it I can't get to it.", true, spr_avatar_red, true);
add_dialog("That hole in the floor is far too big for me to get over, could you help me?", true, spr_avatar_red, true);
add_dialog("Can you get the cheese over there and meet me on the other side of the room?", true, spr_avatar_red, true);
add_dialog("Pleaseeee....", false, spr_avatar_red, true);

d_red_text_wo_cheese = 
add_dialog("Hi Friend....", true, spr_avatar_red, true);
add_dialog("I can still smell the CHEEZ! but it still smells like it's far away.", true, spr_avatar_red, true);
add_dialog("Oh you don't have it... that's alright I'm sorry to bother you, I'm just really hungry.", true, spr_avatar_red, true);
add_dialog("If you reconsider I will be here waiting for you.", false, spr_avatar_red, true);


d_red_text_w_cheese = 
add_dialog("Oh My! You got it! You brought me the CHEEZ! I was starving to death!", true, spr_avatar_red, true);
add_dialog("Thank you so much Friend! Here have this as a token of my gratitude.", true, spr_avatar_red, true);
add_dialog("It's not much, but if you press 2 you can use this to shrink down to a size like me.", true, spr_avatar_red, true);
add_dialog("Who know's when being small will help. Sometimes there are things only small people can do.", false, spr_avatar_red, true);



d_blue_text = 
add_dialog("Oh no, oh no, oh no, I can't quite seem to fit...", true, spr_avatar_blue, true);
add_dialog("OH! Hi Friend, I didn't see you there, I've been trying to get this job done.", true, spr_avatar_blue, true);
add_dialog("I just can't quite seem to fit into some of the nooks here.", true, spr_avatar_blue, true);
add_dialog("I need to get this done soon or I'm for sure fired.", true, spr_avatar_blue, true);
add_dialog("If you know of any way to explore the rest of this area I would be in your debt.", false, spr_avatar_blue, true);

d_blue_text_not_explored = 
add_dialog("Hmm, according to my map and your map there's still something missing here.", true, spr_avatar_blue, true);
add_dialog("I surely need to see the whole area for my boss to accept this.", true, spr_avatar_blue, true);
add_dialog("Oh no, Oh no, Oh no......", false, spr_avatar_blue, true);

d_blue_text_explored = 
add_dialog("Oh Boy! Thank you friend, I couldn't have done this without you.", true, spr_avatar_blue, true);
add_dialog("Here I have this thing which will let you smash through walls like I do.", true, spr_avatar_blue, true);
add_dialog("Sometimes if you get stuck you just gotta keep pushing through.", true, spr_avatar_blue, true);
add_dialog("Give it a try and break some of those fragile walls to get outta here. And keep exploring!", false, spr_avatar_blue, true);

d_hole_text = 
add_dialog("Oops, looks like you fell down a hole, there!");
