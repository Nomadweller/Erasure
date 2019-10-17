// This script will shrink the player if called when the player is  normal-sized, and will start a timer
// Once the timer is up, another function  will return the player to normal size.

scr_scale_current_sprite(false); // shrinking and growing of more sprites is done in scr_animate_walk and in Alarm 1

can_shrink = false;
shrunk = true;

alarm_set(1,200);