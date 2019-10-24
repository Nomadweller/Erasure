/// @description Insert description here
// You can write your code in this editor
touchingWall = false;
image_alpha = 0;

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

