//GUI
statBar = instance_create_layer(512, 0, "GUI", obj_statBar);
statBar.persistent = true;

//Variables
globalvar pScore, pMoney, openCutscene, slcCutscene, meetingInterval;
compPrice = 100;
affordComp = false;

//Other
randomize();

//Calendar (Used to keep track of progress in game)
//Month Names
monthN[0]="Jan";
monthN[1]="Feb";
monthN[2]="March";
monthN[3]="April";
monthN[4]="May";
monthN[5]="June";
monthN[6]="July";
monthN[7]="Aug";
monthN[8]="Sept";
monthN[9]="Oct";
monthN[10]="Nov";
monthN[11]="Dec";
//Days in month
monthD[0]=31;
monthD[1]=28;
monthD[2]=31;
monthD[3]=30;
monthD[4]=31;
monthD[5]=30;
monthD[6]=31;
monthD[7]=31;
monthD[8]=30;
monthD[9]=31;
monthD[10]=30;
monthD[11]=31;

month = 7;
day = 15;

//Plays music
audio_play_sound(snd_music,1,true);