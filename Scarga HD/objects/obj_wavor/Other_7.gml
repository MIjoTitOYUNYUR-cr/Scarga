switch (enemie_attack) {

    case "electrowave_explode":
    
            instance_create(x - (2 * x_mirror), y - 36 , obj_wavor_electrowave);
            
     
            enemie_state = "iddle";
            enemie_attack = "none";
        

        break;

    case "electro_path":

        if (repeat_index < sprite_repeat) {
            repeat_index += 1;
            
            instance_create(x - (2 * x_mirror), y - 36 , obj_wavor_bullet);
            
        } else {
            enemie_state = "iddle";
            enemie_attack = "none";
        }

        break;
}

