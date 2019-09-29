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

// Set up movement tracker
deltaMovement = 0;

// For painting
shownMessage = false;
paint_layer = 1599;

// For abilities
color = 0;
can_jump = true;
can_scale = true;
jump_distance = 128;
jump_target_inst = 0;


if(ev_room_start)
show_message("Hey you! Come talk to me, I've got something for you. I'm the red blob over here.")	