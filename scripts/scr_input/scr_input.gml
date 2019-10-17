//Movement
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);

up = keyboard_check(vk_up);
down = keyboard_check(vk_down);

x_dir = right-left;
y_dir = down-up;

// Jump (and/or other abilities)
ability = max(keyboard_check(vk_space),keyboard_check_released(vk_space));


//Utility
if (keyboard_check_pressed(vk_escape)) game_end();
if (keyboard_check_pressed(ord("R"))) game_restart();
