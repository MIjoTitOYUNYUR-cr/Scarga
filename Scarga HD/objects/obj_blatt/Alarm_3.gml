 if (player_state = BLATT_WALLSLIDE){
        with(instance_create(x,y - 28 + (yprevious - y) * 3 , obj_fx_wall_dust)){image_xscale = other.x_mirror; depth = other.depth + 1;}
        }

