
event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	if (instance_exists(target) && point_distance(x,y,target.x,target.y-(target.sprite_height/2)) <= spd)
		applyBuff(target, debuff_Shred, 5);
}