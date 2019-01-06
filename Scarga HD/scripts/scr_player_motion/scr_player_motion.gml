x_mov = xspeed + xfric;

with(par_jumpthing) {

    if (place_meeting(x, y - 1 - other.vsp, other)) {

        if (other.y <= bbox_top) {
            other.ins = true;
        } else {
            other.ins = false;
        }
    }
}


repeat(abs(round(vsp))) {

    if (place_meeting(x, y + sign(vsp), par_solid) == true)
        ||
        (place_meeting(x, bbox_bottom + abs(sign(vsp)), par_jumpthing) && vsp >= 0 && ins == true) {

            vsp = 0;
            break;

        } else {

            if (vsp != 0) {
                y += sign(vsp);
            }

        }
}


if (place_meeting(x, y + 1, par_solid)) || ((place_meeting(x, bbox_bottom + 1, par_jumpthing) && ins == true && vsp >= 0)) {
    free = false;
}
else {
    free = true;
}

if (free == true) {

    if (((place_meeting(x + 4, y, par_solid) && xaxis == 1) || (place_meeting(x - 4, y, par_solid) && xaxis == -1))) {
        vsp += gravity_speed;

        if (vsp > 1.4) {
            vsp = 1.4;
        }

    } else {

        if (player_state != BLATT_WALLSLIDE) {

            if (vsp > 5) {
                vsp = 5;
            } else {
                if (vsp < 0) {
                    vsp += (gravity_speed + (!key_jump_check * .3));
                } else {
                    vsp += gravity_speed;
                }
            }
        } else {

            if (vsp > 3) {
                vsp = 3;
            }

            vsp += gravity_speed;
        }
    }

} else {
    if (vsp >= -0.5) {
        vsp = 0;
    }
}



//// HORIZONTAL MOVEMENT
if (free == false) {


    if (place_meeting(x + x_mov, y + 1, par_solid)) {

        for (i = 0; i <= max_slopes; i += 1) {

            if (!place_meeting(x + x_mov, y - i, par_solid)) {
                x += x_mov;
                y -= i;
                exit;
            }
        }

    }

    if (!place_meeting(x + x_mov, y + 1, par_solid)) {

        for (i = 0; i <= max_slopes; i += 1;) {

            if (place_meeting(x + x_mov, y + i, par_solid)) {
                x += x_mov;
                y += (i - 1);
                exit;
            }
        }
    }
}

if (place_meeting(x + x_mov, y - 1, par_solid)) {

    for (i = 0; i <= max_slopes; i += 1;) {

        if (!place_meeting(x + x_mov, y + i, par_solid)) {
            x += x_mov;
            y += i;
            exit;
        }
    }

}

if (!place_meeting(x + x_mov, y, par_solid)) {
    x += x_mov;
} else if (place_meeting(x + x_mov, y, par_solid)) {

    for (ii = 0; ii < 4; ii += 1) {

        if (!place_meeting(x + ii * xaxis, y, par_solid)) {
            x += ii * xaxis;
        }
    }

}

//////////

