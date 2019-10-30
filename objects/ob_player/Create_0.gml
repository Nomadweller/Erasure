/// @description Insert description here
// You can write your code in this editor
left = 0;
right = 0;
up = 0;
down = 0;

// For force-based movement
x_spd = 0;
y_spd = 0;
accel = 1;
max_spd = 5;
drag = 1;

// Set up movement trackers
deltaMovement = 0;
x_prev_dir = 0;
y_prev_dir = 0;

// For painting
shownMessage = false;
hasColor[3] = false;
hasColor[2] = false;
hasColor[1] = false;
hasColor[0] = true;
paint_layer = 1599;

// For abilities
color = 0;
can_jump = true;
can_shrink = true;
shrunk = false;
can_traverse = true;
jump_distance = 128;
jump_target_inst = noone;
cancel = false;

persistent = true;
depth = -1000;
if(ev_game_start)
show_message("Hey you! Come talk to me, I've got something for you. I'm the red blob over here.")	