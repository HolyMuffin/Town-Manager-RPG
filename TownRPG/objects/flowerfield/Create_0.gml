depth = -y

for(var i = 0; i < 30; i++) {
	var x_ = irandom(380) + 10;
	var y_ = irandom(380) + 10;
	instance_create_depth(x_, y_, -y_, flowerfield_flower);
}