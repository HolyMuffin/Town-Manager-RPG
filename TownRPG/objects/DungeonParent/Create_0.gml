particleSystem = part_system_create();
part_system_depth(global.particleSystem, -room_height);


depth = 1000;
x = 0;
y = global.dungeonY - global.dungeonHeight_Sky;
resetLocation = y;

quitButton = instance_create_depth(global.dungeonWidth-10, y+10, -10000, QuitDungeonButton);
quitButton.dungeon = id;

partyList = ds_list_create();
enemyList = ds_list_create();
currentRoom = 1;
partyList_alive = ds_list_create();
dungeonState = 1; //1 for walking, 2 for in fight, 3 for dungeon complete, 4 for dungeon failed
walkTimer_max = 300;
walkTimer = walkTimer_max;
running = false;
boss = pointer_null;
pause = false;
wait = false;

bastionAlly = 0;
bastionEnemy = 0;
goldBonus = 0;

instBuilding = instance_find(Building_House, 0);
instBuilding2 = instance_find(Building_Vault, 0);
instBuilding3 = instance_find(examplePortal, 0);