if (!menu.slot.running) {
	menu.currentMenu = "Character Select";
	menu.selectedChar = -1; //or currently associated character once thats a thing
	menu.selectedButton = characterNumber;
	changeMenu();
}