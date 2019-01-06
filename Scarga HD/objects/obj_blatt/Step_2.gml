/// @description BLATT SPRITES AND ANIMATIONS
switch (player_state) {

    case BLATT_INTRO:

        sprite_index = spr_blatt_entrace;

        switch (room) {
            case rm_great_highway:
                point_entrace = 256;
                break;
        }

        if (y + 10 < point_entrace) {
            y += 5;
        } else {
            y = point_entrace;
        }
        if (y == point_entrace) {
            image_speed = 0.3;
        } else {
            image_speed = 0;
            image_index = 0;
        }

        break;
    case BLATT_STAND:
        sprite_index = spr_blatt_stand;
        image_speed = 0.20;
        break;

    case BLATT_WALK:
        sprite_index = spr_blatt_walk;
        image_speed = 0.25;
        break;

    case BLATT_JUMP:

        sprite_index = spr_blatt_jump;
        
        if (image_index < 4) {
            image_speed = 0.17;
        } else {
            image_index = 4;
            image_speed = 0;
        }
        break;

    case BLATT_CHARGED:
    
        sprite_index = spr_blatt_shoot;

        image_speed = 0;
        image_index = 0;


        break;

    case BLATT_FALL:
     
        sprite_index = spr_blatt_fall;

        break;

    case BLATT_DASH:

    sprite_index = spr_blatt_dash;
    
        if (free == false) {
            with(instance_create(x - (23 * x_mirror), y - 8 + (yprevious - y) * 3, obj_fx_dust)) {
                image_xscale = other.x_mirror;
                depth = other.depth + 1;
            }
        }

        image_speed = 0;
        image_index = 0;
        break;

    case BLATT_WALLSLIDE:

    sprite_index = spr_blatt_wall_slide;
    
        if (!sound_isplaying(wav_player_wall_skid)) {
            sound_play(wav_player_wall_skid);
        }

        if (!alarm[3]) {
            alarm[3] = 5;
        }

        break;

}

///DEFINE COLOURS
   
    col_1 = make_color_rgb(31,52,109);
    col_2 = make_color_rgb(36,115,179);
    col_3 = make_color_rgb(39,190,222);
    


