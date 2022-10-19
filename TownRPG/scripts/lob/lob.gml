function lob(lob_obj, x_, y_, target_x, target_y, timeMulti, gravityMulti, distMulti) {
	
	//distance to target location
	var dist = point_distance(x_, y_, target_x, target_y);
	//time it takes to lob
	var time = timeMulti*(dist*distMulti/8 + 50);
	//gravity
	var grav = -0.2*gravityMulti;
	//height difference from start to end
	var heightDiff = target_y-y_;
	//speed change from start to end
	var speedChange = grav*time;
	//speed to begin lob at
	var initialVSpeed = speedChange/2+heightDiff/time;
	
	var hSpeed = (target_x-x_)/time;
	
	var inst = instance_create_depth(x_, y_, depth, lob_obj);
	inst.dungeon = dungeon;
	inst.source = id;
	inst.time = time;
	inst.time_max = time;
	inst.hSpd = hSpeed;
	inst.vSpd = initialVSpeed;
	inst.grav = grav;
	inst.shadowSpd = heightDiff/time;
	return inst;
}