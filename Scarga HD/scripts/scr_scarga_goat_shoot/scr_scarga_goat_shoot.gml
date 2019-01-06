if (key_shoot && instance_exists(obj_scarga_bullet) == false) {
        
        player_shoot = 1;
        image_index = 0;
        sound_play(wav_player_electrowave_shoot);
        
        if (!alarm[1]) {
                alarm[1] = 10;
            }

                with(instance_create(x + (10 * x_side) + x_xprev, y - 11, obj_scarga_bullet)) {
                    sprite_index = spr_scarga_goat_bullet;
                    image_speed = 0.2;
                    image_xscale = other.x_side;
                    hspeed = (3.5 * image_xscale);
                    
                    if (!alarm[1]){alarm[1] = 4;}
                
            }
        }
