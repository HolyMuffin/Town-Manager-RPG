if (introCounter < 900) {
	draw_self();
	if (introCounter > 200 && introCounter < 500)
		draw_text(x-100, y-sprite_height-30, "Greetings, welcome to the Library");
	if (introCounter > 600)
		draw_text(x-100, y-sprite_height-30, "May you find your book in this place");
}
