/// @description Variables
	//Trash\\
xMin = 16;
xMax = room_width-16;
coolDown = 0.5 * room_speed;
alarm[0] = coolDown * random_range(1,3);

	//Trashcan\\
instance_create_layer(obj_player.x, obj_player.y, "Player", obj_trashcan);

	//Score\\
gameScore = 0;

	//Lives\\
gameLives = 15;