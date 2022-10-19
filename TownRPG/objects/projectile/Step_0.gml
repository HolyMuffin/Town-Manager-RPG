if (counter < 200)
	counter++;
directionToTarget = point_direction(x, y, mouse_x, mouse_y);
angleToTarget = angle_difference(directionToTarget, direction);
angleToImage = angle_difference(image_angle, direction);
image_directionToTarget = point_direction(x, y, mouse_x, mouse_y);
image_angleToTarget = angle_difference(directionToTarget, image_angle);

if (prep) {
	image_angle += sign(image_angleToTarget) * min(1 + random(0.5), abs(image_angleToTarget));
	speed -= random(speed/50);
	if (abs(angle_difference(image_angle, image_directionToTarget)) == 0 && counter == 200) {
		prep = false;
		speed = 0;
		}
} else {
	image_angle += sign(image_angleToTarget) * min(1, abs(image_angleToTarget));
	if (abs(angle_difference(image_angle, directionToTarget)) > 1) {	
		image_angle += sign(image_angleToTarget) * min(1, abs(image_angleToTarget));
		accel = 0.001;
		speed -= min(speed, 0.025);
	} else {
		if (accel < .025)
			accel += accelvalue;
	}
	motion_add(image_directionToTarget, accel);
	if (abs(angle_difference(direction, directionToTarget)) > 1)
		direction += sign(angleToImage) * min(1, abs(angleToImage));
}



if (speed > 2 && !prep)
	speed = 2;
	
if (point_distance(x,y,mouse_x,mouse_y) < 5)
	instance_destroy();