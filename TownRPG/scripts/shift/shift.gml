function shift(target, x, y, color, time = 18) {
	var inst = createSubObject(x, y-sprite_height/2, depth-1, anim_shift);
	inst.target = target;
	inst.tpX = x;
	inst.tpY = y;
	inst.tpTime = time;
	inst.image_blend = color;
	target.interruptTimer = time;
	if (name == "Astra") {
		if (object_get_parent(target.object_index) == EnemyParent)
			damage(target, skillScaling[2]*atk/100, true);
		else
			healing(target, skillScaling[2]*atk/100, true);
	}
}