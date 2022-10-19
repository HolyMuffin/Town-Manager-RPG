 function updateBaseStats() {
	scaling = power(global.scalingFactor, level-1);
	atk = atk_base*scaling*(atkMulti/100);
	def = def_base*scaling*(defMulti/100);
	if (hp_max > 0) {
		var hpPercent = hp/hp_max;
		hp_max = hp_base*scaling*(hpMulti/100);
		hp = hpPercent*hp_max;
		hpregen = 0.003*hp_max/room_speed;
	}
} 