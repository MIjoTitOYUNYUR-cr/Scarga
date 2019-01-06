var sprite_hitbox;

if (argument0 == false) {
    sprite_hitbox = sprite_index;
} else {
    sprite_hitbox = argument0;
}

var hitbox_x1, hitbox_x2, hitbox_y1, hitbox_y2;

hitbox_x1 = sprite_get_bbox_left(sprite_hitbox);
hitbox_x2 = sprite_get_bbox_right(sprite_hitbox);
hitbox_y1 = sprite_get_bbox_top(sprite_hitbox);
hitbox_y2 = sprite_get_bbox_bottom(sprite_hitbox);

var hitbox;
    hitbox = collision_rectangle(hitbox_x1, hitbox_y1, hitbox_x2, hitbox_y2, par_scarga_weapons, true, false);


return (hitbox);
