// give checkpoint to player
var player = instance_nearest(x,y,ob_player);
if (player.Checkpoint != self.CheckpointID && place_meeting(x,y,ob_player)){
	player.Checkpoint = self.CheckpointID;
	player.check_x = x;
	player.check_y = y;
}