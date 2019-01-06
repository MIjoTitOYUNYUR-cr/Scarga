x_mov = xspeed + xfric;

with(par_jumpthing) {

    if (place_meeting(x, y - 1 - other.vsp, other)) {

        if (other.y <= bbox_top) {other.ins = true;}else{other.ins = false;}
    }
                         }
                         
                         
    repeat(abs(round(vsp))) {

    if (place_meeting(x, y + sign(vsp), par_solid) == true)
        ||
        (place_meeting(x, bbox_bottom + abs(sign(vsp)), par_jumpthing) && vsp >= 0 && ins == true) {
        
            vsp = 0;
            break;
              
        } else {

            if (vsp != 0) {y += sign(vsp);}

        }
}

                         
if (place_meeting(x, y + 1, par_solid)) || ((place_meeting(x, bbox_bottom + 1, par_jumpthing) && ins == true && vsp >= 0)) {free = false;}
 else {free = true;}

if (free == true) {

if (vsp > 10){vsp = 10;}else{vsp += gravity_speed;}

           }else{ if (vsp >= -0.5){vsp = 0;}}
           


           //// HORIZONTAL MOVEMENT
if (free == false) {

                 if (place_meeting(x + x_mov, y + 1, par_solid)) {
                 
                 for (i = 0; i <= max_slopes; i += 1) {
                         
                 if (!place_meeting(x + x_mov, y - i, par_solid)) {x += x_mov;y -= i;exit;}}

                 }

                 if (!place_meeting(x + x_mov, y + 1, par_solid)) {
                 
                 for (i = 0; i <= max_slopes; i += 1;) {
                         
                 if (place_meeting(x + x_mov, y + i, par_solid)) {x += x_mov;y += (i - 1);exit;}}
                 }
                                   }
                         
                 if (place_meeting(x + x_mov, y - 1, par_solid)) {
                 
                 for (i = 0; i <= max_slopes; i += 1;) {
                         
                 if (!place_meeting(x + x_mov, y + i, par_solid)) {x += x_mov;y += i;exit;}}
                 
                 }

             if (!place_meeting(x + x_mov, y, par_solid)) {x += x_mov;} 
        else if (place_meeting(x + x_mov, y, par_solid)) {
          
             for (ii = 0; ii < 4; ii += 1) {
             
             if (!place_meeting(x + ii * xaxis, y, par_solid)) {x += ii * xaxis;}}
                 
             }
             
//////////


