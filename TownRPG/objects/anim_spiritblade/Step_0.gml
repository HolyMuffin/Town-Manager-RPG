event_inherited();

if (!global.pause && !dungeonPauseCheck() && instance_exists(target) && type != "projectile") {
	counter++;
	image_xscale = 1;
	var dir = point_direction(x,y,target.x,target.y-target.sprite_height/2);
	var diff = angle_difference(dir, image_angle);
	if (counter < 60)
		image_angle += min(4, abs(diff))*sign(diff);
	else
		type = "projectile";
}