switch (bullet_state) {

    case 1:

        if (sprite_index == spr_wavor_small_bullet_destroy) {
            speed = 0;
        } else {
            var target;
            target = point_direction(x, y, obj_blatt.x + 8, obj_blatt.y - 8);

            motion_add(target, min(0.6, 0.4, 0.2));
            
            if (!alarm[2]){alarm[2] = 60;}
        }
        
        break;
}

