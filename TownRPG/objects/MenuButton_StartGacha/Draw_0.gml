draw_self();
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
if (global.resources[0] >= 1)
	draw_text(x, y, "pull");
else
	draw_text(x, y, "u r poor");
	
draw_set_halign(fa_left);
draw_set_valign(fa_top);