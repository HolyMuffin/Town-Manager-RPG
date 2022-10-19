if(camera_get_view_y(global.cam) == 0) {
	camera_set_view_pos(global.cam, 0, global.dungeonY - global.dungeonHeight_Sky);
	camera_set_view_size(global.cam, global.dungeonWidth, global.dungeonHeight);
} else {
	camera_set_view_pos(global.cam, 0, 0);
	camera_set_view_size(global.cam, global.townWidth, global.townHeight);
}

