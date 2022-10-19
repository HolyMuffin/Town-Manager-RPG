
function spawnDoppel(x_, y_, doppel) {
	
	var inst = instance_create_depth(x_, y_, 0, Shadeshifter);
	inst.doppel = doppel;
	ds_list_add(enemyList, inst);
	
	with (inst) {
		event_perform_object(doppel, ev_create, 0);
		sprite_index = object_get_sprite(doppel);
		//imageBlend_base = make_color_hsv(0, 0, 100);
	}
	
	setLevel(inst, level); //untested, but seems like it should be here
	inst.image_xscale = -1;
	
	inst.dungeon = id;
	bastionEnemy += inst.bastion;
	
	//nerf to copy so u dont just lose
	inst.atkMulti -= 10;
	
	with (inst) {
		updateBaseStats();
	}
}