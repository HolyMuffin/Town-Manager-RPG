event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	angle -= 6;
	image_angle = angle;
	if (instance_exists(target) && instance_exists(source) && point_distance(x,y,target.x,target.y-(target.sprite_height/2)) <= spd) {
		applyBuff(target, debuff_Shred, 5)
	}
}