draw_set_color(make_color_rgb(170, 170, 200));
y = camera_get_view_y(global.cam);
draw_rectangle(0, y, room_width, y+50*image_yscale, false);
draw_set_color(c_dkgrey);
draw_rectangle(1, y+1, global.townWidth-2, y+50*image_yscale, true);

draw_set_color(c_black);
draw_set_font(betterfont);
draw_text_transformed(100*image_xscale, y+10*image_yscale, "Gold: " + string(global.resources[0]), image_xscale, image_yscale, 0);