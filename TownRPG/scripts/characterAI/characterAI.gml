function characterAI() {
	if (location == 1) {
		//do stuff around town
		moveToward(destinationX, destinationY);
		if (currentRoadLink = pointer_null){
			findFirstRoadLink();
		}
	
		if (atDestination()) {
			if (buildingTimer > 0) { //running building
				buildingTimer--;
			} else if (currentBuilding.gpsX == x && currentBuilding.gpsY == y) { //at building gps
				if (reachedBuilding) { //on way out of building
					ds_list_delete(todoList, 0);
					if (ds_list_size(todoList) == 0) {
						var index = irandom(ds_list_size(global.idleBuildings) - 1);
						ds_list_add(todoList, ds_list_find_value(global.idleBuildings, index));
					}
					currentBuilding = ds_list_find_value(todoList, 0);
					reachedBuilding = false;
					findFirstRoadLink();
				} else { //on way into building
					destinationX = currentBuilding.x;
					destinationY = currentBuilding.y;
				}
			} else if (currentBuilding.x == x && currentBuilding.y == y) { //at building
				if (!reachedBuilding) { //first reach building
					buildingTimer = currentBuilding.buildingTimer; //settimer
					ds_list_add(currentBuilding.charactersAtBuilding, id);
					reachedBuilding = true;
				} else { //leave building
					if (dungeon == pointer_null || ds_list_size(todoList) > 1) {
						ds_list_delete(currentBuilding.charactersAtBuilding, ds_list_find_index(currentBuilding.charactersAtBuilding, id));
						destinationX = currentBuilding.gpsX;
						destinationY = currentBuilding.gpsY;
					} else if (dungeon != pointer_null && ds_list_size(todoList) == 1) {
						if (portaldelay == 0 && waiting == false) {
							waiting = true;
							portaldelay = 50;
						}
						else if (!waiting)
							portaldelay--;
					}
				}
			} else if (currentBuilding.gpsX == currentRoadLink.x || currentBuilding.gpsY == currentRoadLink.y) { // on correct road
				destinationX = currentBuilding.gpsX;
				destinationY = currentBuilding.gpsY;
				if (currentBuilding.gpsY < currentRoadLink.y)
					currentDirection = 0;
				if (currentBuilding.gpsY > currentRoadLink.y)
					currentDirection = 1;
				if (currentBuilding.gpsX < currentRoadLink.x)
					currentDirection = 2;
				if (currentBuilding.gpsX > currentRoadLink.x)
					currentDirection = 3;
			} else if (currentRoadLink.directioncount > 2) { // at 3-4 way roadlink
				calculateCorrectDirections();			
				if (correctDirectionCount == 2) {
					for (i = irandom(1)*2; i < 4; i++) {
						if (correctDirections[i]) {
							correctDirections[i] = false;
							correctDirectionCount--;
							break;
						}
					}
				}			
				setRoadLink();
			} else if (currentRoadLink.directioncount == 2) { // at 2 way intersection
				calculateRemainingDirection();
				setRoadLink();
			}
		}
	}
	
	
	if (location == 2) {
		if (dungeon.dungeonState == 1) {//walking phase
			if (skillTimer > 0)
				cancelSkill();
			x-=dungeon.dungeonSpeed;
			moveToward(global.dungeonX + 100*startingX, global.dungeonY + global.dungeonHeight_Ground * (ds_list_find_index(dungeon.partyList, id) + 1) / (ds_list_size(dungeon.partyList) + 1) );
		} else if (dungeon.dungeonState == 2) {//combat phase
			if (hp > 0) {//while alive
				combatEffects();
				if (ds_list_size(otherTeamList()) == 0)
					cancelSkill();
				if (interruptTimer == 0 && ds_list_size(otherTeamList()) > 0)
					combatAI();
			} else {//move back to start when dead
				image_xscale = 1;
				moveToward(global.dungeonX + 100*startingX, global.dungeonY + global.dungeonHeight_Ground * (ds_list_find_index(dungeon.partyList, id) + 1) / (ds_list_size(dungeon.partyList) + 1) );
			}
		} else if (dungeon.dungeonState == 3 && waiting = false) {
			moveToward(destinationX, destinationY);
			if (x == destinationX && y == destinationY)
				waiting = true;
		}
	}
}