    switch (enemy_state) {
    case "iddle":

        sprite_index = spr_om_erend_iddle;
        image_speed = 0;
        image_index = 0;


        if (keyboard_check_pressed(ord("B"))) {
            enemy_state = "charged";
            image_index = 0;
        }


        break;

    case "charged":

        sprite_index = spr_om_erend_attack;

        if (floor(image_index) == 3) {
            image_speed = 0;
            image_index = 3;
            
        with(instance_create(x + 52,y + 58,obj_fx)){
            sprite_index = spr_om_erend_charge_fx;
            image_index = 0;
            image_speed = 0.2;     
            }
            
            if (!alarm[1]){alarm[1] = 30;}
            
            enemy_state = "shoot";
            
            
        } else {
            image_speed = 0.3;
        }



        break;
        
        case "attack":
        
        sprite_index = spr_om_erend_attack;
        
        break;
}

/*
   Al empezar el jefe azotara 3 veces cada brazo con el suelo, primero el derecho, luego el izquierdo, los levantaran 64px de su origen.
*/

/* */
/*  */
