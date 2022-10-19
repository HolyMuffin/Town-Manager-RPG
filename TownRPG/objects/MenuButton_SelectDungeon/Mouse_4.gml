//uncomment after implemented
//menu.currentMenu = "Dungeon Select";
if (menu.selectedDungeon == global.dungeons[0])
	menu.selectedDungeon = global.dungeons[1];
else
	menu.selectedDungeon = global.dungeons[0];
menu.slot.dungeon = menu.selectedDungeon;
