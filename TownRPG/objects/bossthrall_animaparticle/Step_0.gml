if (!global.pause) {
	deg += degMod;
	rad -= radMod;
	x = dcos(deg)*rad;
	y = dsin(deg)*rad;




	//moveToward2(0, 0, 0.5);
	if (rad <= 0)
		instance_destroy();
}