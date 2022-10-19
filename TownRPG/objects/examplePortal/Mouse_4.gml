if (!instance_exists(Menu_Portal)) {
	show_debug_message("future: add if menu doesnt exist");
	inst = instance_create_depth(675, 540, -global.townHeight, Menu_Portal);
	inst.selectedDungeon = global.dungeons[0];
}