function imageBlend() {
	if (reanimated) {
		image_blend = make_color_rgb(50, 50, 50);
	} else if (damagedCounter > 0) {
		image_blend = make_color_rgb(255, 255-10*damagedCounter, 255-10*damagedCounter); //red
	} else if (frost > 0) {
		var frostMulti = frost*2;
		image_blend = make_color_rgb(max(155, 255-frostMulti), max(155, 255-frostMulti), max(230, 255-frostMulti/4)); //ice blue
	} /*else if (healedCounter > 0) {
		image_blend = make_color_rgb(230, 255, 230);
	} */else
		image_blend = imageBlend_base;
}