if(place_meeting(x,y,ob_player))
{
instance_destroy(self);
ob_player.hasCheese = true;	
}