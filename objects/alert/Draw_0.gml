x -= 1 * dirX;
y -= 1 * dirY;

if(alpha > 0) {
	alpha -= 0.01;
}

draw_set_alpha(alpha);
draw_set_font(def_small);
draw_set_color(c_black);
draw_text(x-2, y-2, text);
draw_set_color(c_red);
draw_text(x, y, text);
draw_set_alpha(1);