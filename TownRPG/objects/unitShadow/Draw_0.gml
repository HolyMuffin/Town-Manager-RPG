if (variable_instance_exists(id, "source") && instance_exists(source)) {
	x = source.x;
	y = source.y;
	draw_self();
} else
	instance_destroy();
