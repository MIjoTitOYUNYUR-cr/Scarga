var xx, yy;

if (fx_img_number >= 3) {
    fx_img_number = 0;
} else {
    fx_img_number += fx_img_speed;
}

if (sprite_index == spr_om_erend_left_arm) {
    switch (image_index) {
        case 0:
            xx = -26;
            yy = 2;
            break;
        case 1:
            xx = -40;
            yy = 5;
            break;
    }
} else {
    switch (image_index) {
        case 0:
            xx = -6;
            yy = 2;
            break;
        case 1:
            xx = 3;
            yy = 5;
            break;
    }

}

if (image_index == 0){mask_index = spr_om_erend_left_arm_repose_mask;}else{mask_index = spr_om_erend_left_arm_smash_mask;}

draw_sprite_ext(spr_om_erend_arm_fx, fx_img_number, x + xx, round(y + yy + y_draw), 1, 1, 0, c_white, 0.5);
draw_sprite_ext(sprite_index, image_index, round(x), round(y + y_draw), 1, 1, 0, image_blend, image_alpha);
draw_sprite(mask_index,0,x,y);



