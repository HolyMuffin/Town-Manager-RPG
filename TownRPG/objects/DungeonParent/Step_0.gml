if(global.pause || pause)
	part_system_automatic_update(particleSystem, false);
else 
	part_system_automatic_update(particleSystem, true);

if (!global.pause && !pause) {
	if (!running) {
		if (allWaiting()) { //when all on portal in town, start dungeon
			ds_list_copy(partyList_alive, partyList);;
			sendPartyToDungeon();
			running = true;
		}
	}

	if (running) {
		if (dungeonState == 1 && walkTimer > 0) { //walking phase
			walkTimer--;
			x-=dungeonSpeed;
		} else if (dungeonState == 1) { //switch to combat phase
			dungeonState = 2; 
			if (object_index == Dungeon1)
				spawnRoom_Dungeon1();
			if (object_index == Dungeon2)
				spawnRoom_Dungeon2();
			if (object_index == Dungeon3)
				spawnRoom_Dungeon3();
			if (object_index == DungeonLibrary)
				spawnRoom_DungeonLibrary();
			startOfCombat();
				
		} else if (dungeonState == 2) { //combat phase
			if (ds_list_size(enemyList) == 0 && !wait) {
				if (currentRoom != roomCount) {
					currentRoom++;
					walkTimer = walkTimer_max;
					dungeonState = 1;
					show_debug_message("state changed to 1")
				} else { //win phase
					dungeonState = 3;
					returnTimer = 30;
					show_debug_message("state changed to 3")
					setPartyDestination(global.dungeonWidth+40, global.dungeonY + global.dungeonHeight_Ground/2);
					//give all players destination coords
				}
			}
			if (ds_list_size(partyList_alive) == 0) { //lose phase
				dungeonState = 4; 
				returnTimer = 300;
				show_debug_message("state changed to 4")
			} 
		} else if (dungeonState == 3) { //return to town after win
			if (allWaiting()) {
				returnTimer--;
				if (returnTimer == 0) {
					sendPartyToTown();
				resetDungeon();
				}
			}
		} else if (dungeonState == 4) { //return to town after lose
			returnTimer--;
			if (returnTimer == 0) {
				sendPartyToTown();
				resetDungeon();
			}
		}
	}
	if (boss != pointer_null && !instance_exists(boss))
		boss = pointer_null;
}