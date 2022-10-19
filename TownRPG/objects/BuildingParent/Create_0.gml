/// @description Insert description here
// You can write your code in this editor
gpsX = 0;
gpsY = 0;
charactersAtBuilding = ds_list_create();
buildingTimer = 30; //time character spends in this building
characterQueue = ds_list_create(); //characters that are/are going to perform actions
depth = -y;

//consumables buildings
//