if (instance_exists(obj_scarga) == true) {

    if (obj_scarga.player_dash > 0 && dash_state == 0) {

        if (image_alpha != 1) {
            image_alpha += 0.1;
        }

    } else {
     
     dash_state = 1;
     
        if (image_alpha > 0) {
            image_alpha -= 0.1;
        } else {
            instance_destroy();
        }
    }


     x = obj_scarga.x - (7 * image_xscale);
     y = obj_scarga.y - 28;
     depth = obj_scarga.depth + 1;
     image_xscale = obj_scarga.x_mirror;
     
     if (obj_scarga.free == false){image_index = 0;}else{image_index = 1;}
     
}else{

if (image_alpha > 0) {
            image_alpha -= 0.1;
        } else {
            instance_destroy();
        }

}

