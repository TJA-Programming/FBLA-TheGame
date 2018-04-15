/// @description Spawns Trash
instance_create_layer(random_range(xMin,xMax), 0, "Trash", obj_trash);
alarm[0] = coolDown * random_range(1,3);