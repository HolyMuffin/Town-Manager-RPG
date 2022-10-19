event_inherited();
if (!global.pause && !dungeonPauseCheck()) {
	
	
	//skills
	if (interruptTimer == 0) {

		if (currentSkill == "Auto: Slam") {
			if (!instance_exists(target) || !inRange(0)) {
				cancelSkill();
			} else {
				var delay = 8;
				var attackTime = (slamTime-delay)/3;
				var time2 = slamTime-delay-attackTime;
				var distX = abs(target.x-x);
				var distY = abs(target.y-y);
				var signY = sign(target.y-y);
				if (skillTimer == slamTime)
					xscale = image_xscale;
				if (skillTimer > ceil(slamTime-attackTime)) {
					x_ = x + 4*(distX-distX/power(time2, 1/4)*power(skillTimer-attackTime-delay, 1/4))*image_xscale;
					y_ = y + 4*signY*(distY-distY/power(time2, 1/4)*power(skillTimer-attackTime-delay, 1/4));
					//show_message("Before");
				}
				if (skillTimer == floor(slamTime-attackTime)) {
					//show_message("Damage");
					damage(target, atk*1.5, true);
				}
				if (skillTimer < floor(slamTime-attackTime-delay)){
					x_ = x + (distX-distX/power(time2, 1/4)*power(abs(skillTimer-time2), 1/4))*image_xscale;
					y_ = y + signY*(distY-distY/power(time2, 1/4)*power(abs(skillTimer-time2), 1/4));
					//show_message("After");
				}
			}
		}
	}
}