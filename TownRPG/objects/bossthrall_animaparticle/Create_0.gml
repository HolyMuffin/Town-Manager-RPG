rad = sqrt(power(x,2)+power(y,2));
deg = darctan(y/x);
radMod = 0.5 + random(0.2)-0.1;
degMod = 0.4 + random(0.2)-0.1;
color = make_color_hsv(200, 120, 105+irandom(150));
rotate = irandom(360);
if (x < 0)
	deg = 180-deg;