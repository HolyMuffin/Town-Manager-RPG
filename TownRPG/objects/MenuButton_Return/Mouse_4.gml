if (menu.currentMenu == "Main Menu") {
	instance_destroy(menu);
} else {
	menu.currentMenu = "Main Menu";
	changeMenu();
}