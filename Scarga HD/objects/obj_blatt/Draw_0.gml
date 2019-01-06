draw_sprite_ext(sprite_index,-1,floor(x),floor(y),x_mirror,1,0,image_blend,image_alpha);
//draw_sprite_ext(mask_index,-1,round(x),round(y),1,1,0,image_blend,image_alpha);

draw_set_color(c_red);
draw_set_alpha(0.5);
draw_rectangle(floor(x  - (3 * x_mirror)) , floor(y - 24), floor(x + 3 ) , floor(y + 1),false);

