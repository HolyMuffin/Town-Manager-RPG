global.moveSpeed = 4*3;
global.combatSpeed = 2.3;
game_set_speed(100, gamespeed_fps);
global.pause = false;

global.townX = 10;
global.townY = 10;
global.townWidth = 1350;
global.townHeight = 1080;


initializeDungeons();
global.dungeonHeight_Sky = 180; 
global.dungeonHeight_Ground = 225;
global.dungeonWidth = 506;
global.dungeonHeight = 405;
global.dungeonX = 50;
global.dungeonY = 1400 + global.dungeonHeight_Sky;


global.activeDungeonCount = 0;
global.maxlevel = 100;
global.scalingFactor = 1.1;

initializeDungeonSlots();

//gacha variables
global.pityCount4star = 1;
global.pityCount5star = 1;
global.gacha3stars = [Albert, Lisa, Maria, Doofus, Goofus, Boofus, Wendigo];
global.gacha4stars = [FurnaceGolem, Vanessa];
global.gacha5stars = [Sylvia, SpoopyMage];

global.charactersAcquired = ds_list_create();
global.charactersAvailable = ds_list_create();
global.idleBuildings = ds_list_create();

initializeEquipment();

global.resources = [5,0,0];

global.particleSystem = part_system_create();
part_system_depth(global.particleSystem, -room_height);
global.particleSpoopy = particleSpoopy();
//particleSnowEmitter(); snow particles worthless atm
global.c_poison = make_color_rgb(100, 120, 50);
smokeCloud = particleCloud();

randomize();
createRoadLinks();
	
	
instBuilding = instance_create_depth(1027, 651, 0, Building_House);
instBuilding.gpsX = 1027;
instBuilding.gpsY = 762;
ds_list_add(global.idleBuildings, instBuilding);

instBuilding2 = instance_create_depth(300, 250, 0, Building_Vault);
instBuilding2.gpsX = 300;
instBuilding2.gpsY = 183;
ds_list_add(global.idleBuildings, instBuilding2);

instBuilding3 = instance_create_depth(480, 820, 0, examplePortal);
instBuilding3.gpsX = 480;
instBuilding3.gpsY = 913;
ds_list_add(global.idleBuildings, instBuilding3);

instBuilding4 = instance_create_depth(605, 580, 0, Building_Fishing);
instBuilding4.gpsX = 739;
instBuilding4.gpsY = 580;
ds_list_add(global.idleBuildings, instBuilding4);


instBuilding5 = instance_create_depth(1240, 280, 0, Building_Mining);
instBuilding5.gpsX = 1171;
instBuilding5.gpsY = 280;
ds_list_add(global.idleBuildings, instBuilding5);

x = 300;
y = 240;

enum resourceID {
	gold = 0,
	gacha = 1,
	smithing = 2
}

global.cam = camera_create_view(0, 0, global.townWidth, global.townHeight);
view_set_visible(0, true);
view_set_camera(0, global.cam);
view_enabled = true;
for(var i = 0; i < 3; i++) {
	var inst = instance_create_depth(24, 24, -1000, CameraButton);
	inst.buttonNumber = i;
}


instance_create_depth(10, 10, -1000, UI);

var load = loadGame();
if(!load) {
	createCharacter(Fern);
	createCharacter(Glaice);
	createCharacter(Rufus);
	createCharacter(Cyrus);
	createCharacter(Hemlock);
	createCharacter(Willow);
	createCharacter(Vanessa);
	createCharacter(Astra);
	createCharacter(Wendigo);
	createCharacter(Goofus);
	createCharacter(Doofus);
	createCharacter(Boofus);
	createCharacter(Maria);
	createCharacter(Albert);
	createCharacter(Lisa);
	createCharacter(Agnes);
/*
	createCharacter(Edgar);
	createCharacter(Kali);
	createCharacter(FurnaceGolem);
	createCharacter(SpoopyMage);
	createCharacter(Sylvia);
	createCharacter(Assassin);
*/
}