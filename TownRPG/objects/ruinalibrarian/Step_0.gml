if (!instance_exists(dungeon) || !dungeon.running)
	instance_destroy();
if (!global.pause && !dungeonPauseCheck()) {
	if (introCounter < 1000) {
		introCounter++;
	}

	if (waveCounter == 2 && unitCounter > 0) {
		yesodCounter++;
		if (yesodCounter >= yesodCounter_max) {
			yesodCounter = 0;
			yesodCounter_max *= 1.2;
			unitCounter += 3;
			with (dungeon) {
				var inst = spawnEnemy(global.dungeonWidth-30, y+global.dungeonHeight_Sky+random(global.dungeonHeight_Ground-10)+5, RuinaYesod);
				inst.librarian = librarian;
				var inst = spawnEnemy(global.dungeonWidth-30, y+global.dungeonHeight_Sky+random(global.dungeonHeight_Ground-10)+5, RuinaYesod);
				inst.librarian = librarian;
				var inst = spawnEnemy(global.dungeonWidth-30, y+global.dungeonHeight_Sky+random(global.dungeonHeight_Ground-10)+5, RuinaYesod);
				inst.librarian = librarian;
			}
		}
	}
	
	waveDelay = max(0, waveDelay-1);
	
	if (unitCounter == 0 && waveDelay == 150) {
	//return everyone to left side of screen
		for(var i = 0; i < ds_list_size(dungeon.partyList_alive); i++) {
			inst = ds_list_find_value(dungeon.partyList_alive, i);
			inst.x = global.dungeonX + 100*inst.startingX;
			inst.image_xscale = 1;
		}
	}
	
	if (introCounter == 1000 && unitCounter == 0 && waveDelay == 0) { //when ready for next wave
		waveCounter++ //increment wave counter
		switch(waveCounter) { //check which wave to spawn
		
			case 1: //2 Malkuth
				unitCounter = 2;
				with (dungeon) { 
					var inst = spawnEnemy(global.dungeonWidth-30, y+global.dungeonHeight_Sky+global.dungeonHeight_Ground*1/4, RuinaMalkuth);
					inst.librarian = librarian;
					var inst = spawnEnemy(global.dungeonWidth-30, y+global.dungeonHeight_Sky+global.dungeonHeight_Ground*3/4, RuinaMalkuth);
					inst.librarian = librarian;
				}
			break;
		
			case 2: //3 Yesod (followed by dwindling waves of more yesod if slow)
				unitCounter = 3;
				with (dungeon) { 
					var inst = spawnEnemy(global.dungeonWidth-30, y+global.dungeonHeight_Sky+global.dungeonHeight_Ground*1/4, RuinaYesod);
					inst.librarian = librarian;
					var inst = spawnEnemy(global.dungeonWidth-30, y+global.dungeonHeight_Sky+global.dungeonHeight_Ground*2/4, RuinaYesod);
					inst.librarian = librarian;
					var inst = spawnEnemy(global.dungeonWidth-30, y+global.dungeonHeight_Sky+global.dungeonHeight_Ground*3/4, RuinaYesod);
					inst.librarian = librarian;
				}
			break;
			case 3: //case Hod Squad
				unitCounter = 4;
				with (dungeon) {
					var inst = spawnEnemy(global.dungeonWidth-30, y+global.dungeonHeight_Sky+global.dungeonHeight_Ground*1/5, RuinaHodReindeer);
					inst.librarian = librarian;
					var inst = spawnEnemy(global.dungeonWidth-50, y+global.dungeonHeight_Sky+global.dungeonHeight_Ground*2/5, RuinaHod);
					inst.librarian = librarian;
					var inst = spawnEnemy(global.dungeonWidth-70, y+global.dungeonHeight_Sky+global.dungeonHeight_Ground*3/5, RuinaHodRhino);
					inst.librarian = librarian;
					var inst = spawnEnemy(global.dungeonWidth-30, y+global.dungeonHeight_Sky+global.dungeonHeight_Ground*4/5, RuinaHodRabbit);
					inst.librarian = librarian;
				}
			break;
		
			case 4: //3 Netz
				unitCounter = 3;
				with (dungeon) {
					var inst = spawnEnemy(global.dungeonWidth-30, y+global.dungeonHeight_Sky+global.dungeonHeight_Ground*1/4, RuinaNetzach);
					inst.librarian = librarian;
					inst.image_index = 0;
					var inst = spawnEnemy(global.dungeonWidth-30, y+global.dungeonHeight_Sky+global.dungeonHeight_Ground*2/4, RuinaNetzach);
					inst.librarian = librarian;
					inst.image_index = 1;
					var inst = spawnEnemy(global.dungeonWidth-30, y+global.dungeonHeight_Sky+global.dungeonHeight_Ground*3/4, RuinaNetzach);
					inst.librarian = librarian;
					inst.image_index = 2;
				}
			break;
		
			case 5: //3 Tippy
				unitCounter = 3;
				with (dungeon) {
					var inst = spawnEnemy(global.dungeonWidth-30, y+global.dungeonHeight_Sky+global.dungeonHeight_Ground*1/4, RuinaTippy);
					inst.librarian = librarian;
					var inst = spawnEnemy(global.dungeonWidth-30, y+global.dungeonHeight_Sky+global.dungeonHeight_Ground*2/4, RuinaTippy);
					inst.librarian = librarian;
					var inst = spawnEnemy(global.dungeonWidth-30, y+global.dungeonHeight_Sky+global.dungeonHeight_Ground*3/4, RuinaTippy);
					inst.librarian = librarian;
				}
			break;
		
			case 6: //Gebura Boss
				unitCounter = 1;
				with (dungeon) {
					var inst = spawnEnemy(global.dungeonWidth-30, y+global.dungeonHeight_Sky+global.dungeonHeight_Ground*2/4, EnemyBossGebura);
					inst.librarian = librarian;
					boss = inst;
				}	
			break;
			
			case 7: //3 Chesed
				unitCounter = 3;
				with (dungeon) {
					var inst = spawnEnemy(global.dungeonWidth-30, y+global.dungeonHeight_Sky+global.dungeonHeight_Ground*1/4, RuinaChesed);
					inst.librarian = librarian;
					var inst = spawnEnemy(global.dungeonWidth-30, y+global.dungeonHeight_Sky+global.dungeonHeight_Ground*2/4, RuinaChesed);
					inst.librarian = librarian;
					var inst = spawnEnemy(global.dungeonWidth-30, y+global.dungeonHeight_Sky+global.dungeonHeight_Ground*3/4, RuinaChesed);
					inst.librarian = librarian;
				}
			break;
			
			case 8: //Binah + 2 Sweeper
				unitCounter = 3;
				with (dungeon) {
					var inst = spawnEnemy(global.dungeonWidth-30, y+global.dungeonHeight_Sky+global.dungeonHeight_Ground*2/4, RuinaBinah);
					inst.librarian = librarian;
					var inst = spawnEnemy(global.dungeonWidth-50, y+global.dungeonHeight_Sky+global.dungeonHeight_Ground*1/5, RuinaSweeper);
					inst.librarian = librarian;
					var inst = spawnEnemy(global.dungeonWidth-50, y+global.dungeonHeight_Sky+global.dungeonHeight_Ground*4/5, RuinaSweeper);
					inst.librarian = librarian;
				}
			break;
			
			case 9: //Faith Hokma
				unitCounter = 1;
				with (dungeon) {
					var inst = spawnEnemy(global.dungeonWidth-30, y+global.dungeonHeight_Sky+global.dungeonHeight_Ground*2/4, RuinaHokma);
					inst.librarian = librarian;
					boss = inst;
					var inst2 = instance_create_depth(0, y+global.dungeonHeight, 0, fadeWhite);
					inst2.source = inst;
					inst2.dungeon = id;
				}	
			break;
			case 10: //Black Silence Boss
				unitCounter = 1;
				with (dungeon) {
					var inst = spawnEnemy(global.dungeonWidth-30, y+global.dungeonHeight_Sky+global.dungeonHeight_Ground*2/4, EnemyBossRoland);
					inst.librarian = librarian;
					boss = inst;
				}	
			break;
			case 11:
			unitCounter = 1;
			dungeon.wait = false;
			break;
		}
	}
}