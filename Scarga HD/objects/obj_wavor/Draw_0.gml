draw_sprite_ext(sprite_index,-1,floor(x),floor(y),x_mirror,1,0,image_blend,image_alpha);
/*
var hitbox_x2 = x + sprite_get_bbox_left(sprite_index);
var hitbox_x1 = x + sprite_get_bbox_right(sprite_index);
var hitbox_y1 = y + sprite_get_bbox_top(sprite_index);
var hitbox_y2 = y + sprite_get_bbox_bottom(sprite_index);

draw_set_color(c_red);
draw_rectangle(hitbox_x1 - 14,hitbox_y1 - 38,hitbox_x2 - 14,hitbox_y2 - 38,true);
draw_set_color(c_white);

draw_set_alpha(0.5);
draw_sprite(mask_index,0,floor(x),floor(y));
draw_set_alpha(1);

/* */
/*  */
