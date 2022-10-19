function initializeCharacter() {

	//town variables
	currentDirection = irandom(3);
	currentRoadLink = pointer_null;
	todoList = ds_list_create(); /// buildings u gotta head to
	currentBuilding = pointer_null;
	reachedBuilding = false;
	buildingTimer = 0;
	resourceTier = 0;
	resources = [0, 0, 0]; //temp number of indexes
	correctDirections = [false, false, false, false];
	correctDirectionCount = 0;

	townCounter = 0;

	//combatai variables
	initializeCombatStats();
	level = 1;
	xp = 0;
	xpReq = 2000;
	role = "ROLE NOT SET";
	role2 = "";
	dupeCount = 0; 
	diesOnDeath = false;
	buffList = ds_list_create();
	equipList = ds_list_create();

	//misc variables
	var inst = instance_create_depth(x, y, 0, unitShadow);
	inst.source = id;
	location = 1;
	dungeon = pointer_null;
	destinationX = x;
	destinationY = y;
	waiting = false;
	portaldelay = 50;
	
	//skill variables
	skillDescriptions = ["", "", "", "", "", "", "", ""];
	skillLevel = [1, 1, 1, 1];
	skillBase = [0, 0, 0, 0];
	skillGrowth = [0, 0, 0, 0];
	skillScaling = [0, 0, 0, 0];

	shadow = particleShadow(image_index);
}