/// @description Initialize
options[0] = "New Game";
options[1] = "How to Play";
//options[2] = "Settings";
options[2] = "Credits";
options[3] = "Quit";

//Variables
wSpace = 48;
pos = 0;
titleX = room_width/2;
titleY = (room_height/2)-192;
optionsX = titleX - 234;
version = "1.1.5";

//Input Variables
globalvar leftButton, rightButton, jumpButton, useButton;

//Default input buttons
leftButton = vk_left;
rightButton = vk_right;
jumpButton = vk_space;
useButton = ord("E");