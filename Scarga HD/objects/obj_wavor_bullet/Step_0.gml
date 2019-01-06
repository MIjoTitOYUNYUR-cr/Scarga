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

        if (sprite_index == spr_wavor_bullet_destroy) {
            speed = 0;
        } else {
            var target;
            target = point_direction(x, y, obj_blatt.x + 8, obj_blatt.y - 8);

            motion_add(target, min(0.6, 0.4, 0.2));
            
            if (!alarm[1]){alarm[1] = 60;}
        }
        
        break;
}

