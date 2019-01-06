if (room == rm_tittle_screen) exit;

if (screen_alpha > 0) {
    draw_set_alpha(screen_alpha);
    draw_rectangle_color(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ), c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);

    screen_alpha -= 0.020;
    hud_alpha = 0;

} else {

    if (instance_exists(obj_blatt) == false)

        with(instance_create(x, y, obj_blatt)) {
            switch (room) {
                case rm_great_highway:
                    if (player_entrace == 1) {
                        x = 256;
                        y = -32;
                    }
                    break;
            }

        }

    if (hud_alpha < 1) {
        hud_alpha += 0.020;
    }

}

if (player_energie < container_energie && charge_energie){player_energie += 0.075;}

///PARALLAX

  switch(room){
    case rm_great_highway:
    
            __background_set( e__BG.X, 0, (__view_get( e__VW.XView, 0 ) * .87) );
            __background_set( e__BG.Y, 0, (__view_get( e__VW.YView, 0 ) * .80) - 112 );
    
       break;
   }

