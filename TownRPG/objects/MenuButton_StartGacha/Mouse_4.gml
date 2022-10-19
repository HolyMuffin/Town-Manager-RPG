if (!menu.gachaAnimating && global.resources[0] >= 1) {
	menu.canExit = false;
	menu.gachaAnimating = true;
	var inst = instance_create_depth(menu.x, menu.y, depth-1, gachaAnimation);
	inst.menu = menu;
	global.resources[0]--;
}
