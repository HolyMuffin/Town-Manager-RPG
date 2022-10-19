event_inherited();
image_angle = 270;
image_blend = c_dkgrey;
image_alpha = 0.3;
counter2 = 0;
counter_max = 50;
targetX = x;
targetY = y;
x += 90;
y -= 180;
radius = 10;

dir = point_direction(x,y, targetX, targetY);

type = "misc";