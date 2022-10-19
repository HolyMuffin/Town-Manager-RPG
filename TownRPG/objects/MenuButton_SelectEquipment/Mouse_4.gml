if (!menu.slot.running) {
	menu.currentMenu = "Equipment Select";
	menu.selectedEquip = -1; //or currently associated character once thats a thing
	menu.selectedButton = equipmentNumber;
	changeMenu();
}