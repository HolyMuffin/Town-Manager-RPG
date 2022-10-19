// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawLightning(target) {
	
	
	draw_set_color(c_yellow);
	///////////////////////////////////////////////////////////
	
	var x1 = x;
	var y1 = y-sprite_height/2;
	var x3 = target.x;
	var y3 = target.y-target.sprite_height/2;
	var dist = point_distance(x1,y1,x3,y3);
	
	var x2 = x1-(x1-x3)/10 + random(dist/10)-dist/20;
	var y2 = y1-(y1-y3)/10 + random(dist/10)-dist/20;
	draw_line(x1,y1,x2,y2);
	var scale = 12;
	while (point_distance(x2,y2,x3,y3) > dist/8) {
		x1 = x2;
		y1 = y2;
		x2 = x2-(x2-x3)/scale + random(dist/18)-dist/36;
		y2 = y2-(y2-y3)/scale + random(dist/18)-dist/36;
		draw_line(x1,y1,x2,y2);
		scale = scale*11/12;
	}
	draw_line(x2,y2,x3,y3);
	/**/
	//////////////////////////////////////////////////////////////
	
	/*
	var x0 = x;
	var y0 = y-sprite_height/2;
	var x3 = target.x;
	var y3 = target.y-target.sprite_height/2;
	var dist = point_distance(x0,y0,x3,y3);
	
	var x1 = x0-(x0-x3)/3;
	var y1 = y0-(y0-y3)/3;
	var x2 = x3-(x3-x0)/3;
	var y2 = y3-(y3-y0)/3;
	
	d = dist/20;
	xRand = random(d*2)-d;
	yRand = random(d*2)-d;
	x1 += xRand;
	y1 += yRand;
	x2 -= xRand;
	y2 -= yRand;
	
	draw_set_color(c_yellow);
	draw_line(x0,y0,x1,y1);
	draw_line(x1,y1,x2,y2);
	draw_line(x2,y2,x3,y3);
	/**/
}