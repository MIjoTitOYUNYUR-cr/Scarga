draw_sprite_ext(spr_tittle_scarga,0,__view_get( e__VW.XView, 0 ) + view_xcenter(spr_tittle_scarga),__view_get( e__VW.YView, 0 ) + 93,1,1,0,c_white,tittle_fade);

for (n = 0; n < 3; n += 1){draw_sprite_ext(spr_tittle_screen_options,n,__view_get( e__VW.XView, 0 ) + view_xcenter(spr_tittle_screen_options),__view_get( e__VW.YView, 0 ) + 198 + (16  * n),1,1,0,c_white,options_fade);}

draw_sprite_ext(spr_tittle_screen_selector,0,__view_get( e__VW.XView, 0 ) + view_xcenter(spr_tittle_screen_options) - 19,__view_get( e__VW.YView, 0 ) + 198 + (16 * options_case),1,1,0,c_white,options_fade);


if (screen_fade != 0){
draw_set_alpha(screen_fade);
draw_rectangle_color(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ),c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);
}

