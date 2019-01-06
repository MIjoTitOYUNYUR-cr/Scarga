switch (bullet_state) {

    case 0:

        if (y > ystart - 32) {
            y -= 2;
        } else {
            y = ystart - 32;
            bullet_state = 1;
        }

        break;

    case 1:

     if (sprite_index != spr_wavor_bullet_destroy){
        if (image_scale < 1.5) {
            image_scale += 0.05;
        } else {
            sprite_index = spr_wavor_bullet_destroy;
            image_speed = 0.15;
            image_index = 0;
            image_scale = 1.5;
            
            bullets_fragments = choose(4,5,6);
        }
        }

        break;
}

