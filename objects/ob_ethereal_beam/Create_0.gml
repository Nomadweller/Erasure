/// @description Insert description here
// You can write your code in this editor
touchingWall = false;
parent = instance_nearest(x,y,ob_player);

listOfWalls = ds_list_create();
numOfWall = instance_place_list(x, y, ob_interactable_wall, listOfWalls, true);
testCount = 0;
	if numOfWall > 0
    {
    for (var i = 0; i < numOfWall; ++i;)
        {
        testCount++;
        }
    }
ds_list_destroy(listOfWalls);

