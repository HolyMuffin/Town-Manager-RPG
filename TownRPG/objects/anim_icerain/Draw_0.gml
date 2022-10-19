draw_self();

if (counter >= 30) {
	draw_set_color(make_color_rgb(200, 200, 255));
	draw_set_alpha(0.12);
	var num = min(1, (counter-30)/50); //expanding circle?
	
	var x_ = targetX//-5;
	var y_ = targetY//+sprite_height/2;
	
	//draw_ellipse(x_-2*radius*num, y_-radius*num, x_+2*radius*num, y_+radius*num, true);
	draw_ellipse(x_-2*radius*num, y_-radius*num, x_+2*radius*num, y_+radius*num, false);
	draw_set_alpha(1);
}