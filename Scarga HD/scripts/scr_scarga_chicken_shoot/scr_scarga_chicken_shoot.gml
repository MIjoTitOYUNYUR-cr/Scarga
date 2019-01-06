if (key_charged) {

            if (!instance_exists(obj_scarga_fireflame)) {
                with(instance_create(x + (13 * x_side) + x_xprev, y - 23, obj_scarga_fireflame)) {
                    image_xscale = other.x_side;
                }
            }else{
            
               if (!sound_isplaying(wav_player_fireflame)){sound_play(wav_player_fireflame);}
            }
        }

