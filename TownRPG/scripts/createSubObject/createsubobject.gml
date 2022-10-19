function createSubObject(x_, y_, depth_, object_) {
	
	var inst = instance_create_depth(x_, y_, depth_, object_);
	
	inst.source = source;
	inst.dungeon = dungeon;
	if (!inst.rotational)
		inst.image_xscale = image_xscale;
		
	return inst;
}