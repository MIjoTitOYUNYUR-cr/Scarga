/// @description BLATT STATES AND MOVEMENTS
if (player_entrace == 0) {
    scr_player_motion();
    scr_check_platform();
}


if (keyboard_check_pressed(ord("R"))) {
    game_restart();
}


if (player_can_move == 0) { //Cancelando los movimientos del player.

    xaxis = x_mirror;
    xspeed = 0;

    gravity_speed = 0;

    player_dash = 0;

    blaster_charged = 0;

    if (free == true) {

        if (vsp > -1) {
            player_state = BLATT_FALL;
        } else {
            player_state = BLATT_JUMP;
        }

    } else {
        player_state = BLATT_STAND;
    }

} else {

    //Definiendo el valor de xspeed y xaxis que son con los que se mueve el player.

    if (player_state != BLATT_WALLSLIDE) {
        if (key_left) {
            xaxis = -1;
        } else if (key_right) {
            xaxis = 1;
        } else {
            xaxis = 0;
        }
    } else {

        if (!key_right && !key_left) {
            xaxis = 0;
        } else {
            xaxis = x_mirror;
        }

    }


    if (player_dash > 0) {
        xspeed = (5 * xaxis);
    } else {

        if (player_state != BLATT_WALLSLIDE) {

            if (player_state != BLATT_WALLJUMP) {

                if (player_walljump) {

                    if (sign(xspeed) == xaxis) {

                        xspeed = (2.5 * xaxis);

                    } else {

                        xspeed = ((1.8) * xaxis);

                    }
                } else {
                    xspeed = ((1.8) * xaxis);
                }

            }
        }
    }

    if (xaxis != 0) {
        x_mirror = xaxis;
    }

    //Definimos el valor de gravity_speed y los slopes.

    gravity_speed = 0.20;
    max_slopes = 1 + abs(round(xspeed));


    //Definimos los estados del player.

    if (player_entrace == 0) {
        if (player_dead == 0) {

            if (free == true) {

                if (((place_meeting(x + 4, y, par_solid) && xaxis == 1) || (place_meeting(x - 4, y, par_solid) && xaxis == -1)) && !player_dash && vsp > -1) {


                    if (player_state != BLATT_WALLSLIDE) {
                        player_state = BLATT_WALLSLIDE;

                        if (alarm[2] != 0) {
                            alarm[2] = 0;
                        }

                    }else{
                    
                    player_dash = 0;

                    if ((xaxis == 1 && key_left) || (xaxis == -1 && key_right)) {
                        if (!alarm[2]) {
                            alarm[2] = 10;
                        }
                    }

                    if (key_jump) {

                        vsp = - 3.8;
                        xspeed = (-xaxis * 5);
                        player_state = BLATT_WALLJUMP;
                        player_walljump = 1;
                        
                        sound_play(wav_player_jump);

                        if (alarm[2] != 0) {
                            alarm[2] = 0;
                        }


                    }
                    
                    }

                } else {

                    if (vsp > -1) {
                        if (player_state != BLATT_WALLSLIDE) {
                            player_state = BLATT_FALL;
                        } else {

                            if (place_meeting(x + xspeed, y, par_solid)) {
                                if (!alarm[2]) {
                                    alarm[2] = 30;
                                }
                            } else {
                                player_state = BLATT_FALL;
                                x_mirror = - x_mirror;
                            }

                        }
                    } else {

                        player_state = BLATT_JUMP;

                    }


                }
            } else {
            
            

                if (vsp > -1 && player_state == BLATT_FALL ) {
                    sound_play(wav_player_land);
                    
                }
                
                if (player_state == BLATT_WALLSLIDE){x_mirror = - x_mirror;}

                player_walljump = 0;
                
                if (player_dash <= 0) {

                    if (xaxis != 0) {
                        player_state = BLATT_WALK;
                    } else {

                            if (key_charged == 0) {
                                player_state = BLATT_STAND;
                            } else {
                                player_state = BLATT_CHARGED;
                            }
                        }



                    player_dash = 0;

                    //Player dash tap engine

                    if (x_mirror == 1) {
                        if (key_right_press && xaxis == 1) {
                            if (player_dash_tap > 0) {
                                player_dash = 1;
                                sound_play(wav_player_dash);

                            } else {
                                player_dash_tap = 1;
                            }

                        }


                        if (player_dash_tap > 0) {
                            player_dash_tap -= 0.075;
                        } else {
                            player_dash_tap = 0;
                        }




                    }

                    if (x_mirror == -1) {
                        if (key_left_press && xaxis == -1) {
                            if (player_dash_tap < 0) {
                                player_dash = 1;
                                sound_play(wav_player_dash);

                            } else {
                                player_dash_tap = -1;
                            }
                        }


                        if (player_dash_tap < 0) {
                            player_dash_tap += 0.075;
                        } else {
                            player_dash_tap = 0;
                        }



                    }

                } else {
                    player_state = BLATT_DASH;
                }

                // Player Jump Engine

                if (key_jump) {


                    if (key_down) {

                        if (place_meeting(x, y + 1, par_jumpthing)) {
                            y += 2;
                        } else {
                            vsp -= 4.6;
                            sound_play(wav_player_jump);
                        }

                    } else {
                        vsp -= 4.6;
                        sound_play(wav_player_jump);
                    }

                }


            }

        } else {
            player_state = BLATT_DIE;
        } // End player define states.
    } else {
        player_state = BLATT_INTRO;
    }

    //Player dash state

    if (player_dash > 0) {
        player_dash -= 0.040;
        player_dash_tap = 0;

            scr_player_dash_fx();
        

        if ((x_mirror == -1 && !key_left) || (x_mirror == 1 && !key_right)) {
            player_dash = 0;
        }

    }




}

///BLATT ATTACKS

if (player_can_move == 1 && player_entrace == 0) {

    if (player_state == BLATT_WALLSLIDE) {
        x_side = -x_mirror;
    } else {
        x_side = x_mirror;
    }

    x_xprev = ((x - xprevious) * 5);
    
    
    scr_blatt_shoot();

}

///HITBOX


var hitbox_x2 = x + sprite_get_bbox_left(sprite_index);
var hitbox_x1 = x + sprite_get_bbox_right(sprite_index);
var hitbox_y1 = y + sprite_get_bbox_top(sprite_index);
var hitbox_y2 = y + sprite_get_bbox_bottom(sprite_index);

hitbox = collision_rectangle(x - 7, y - 26, x + 10, y + 1, par_enemie,false,false);

if (hitbox != noone){damage = scr_blatt_change_damage();}

if (hitbox && !player_hurt ){

player_hp -= damage;
player_hurt = 1;

sound_play(choose(wav_hurt, wav_hurt_2, wav_hurt_3));

image_alpha = 0.75;

alarm[10] = 30;
alarm[11] = 6;

 if (player_hp <= damage){game_restart();}
}





