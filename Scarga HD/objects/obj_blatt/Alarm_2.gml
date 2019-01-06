if (vsp > -1){

if (player_state == BLATT_WALLSLIDE){x_mirror = - x_mirror;}

    player_state = BLATT_FALL;
    
}else{player_state = BLATT_JUMP;}

if (player_walljump){player_walljump = 0;}

