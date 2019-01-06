if (surface_exists(light_surf)){

    surface_set_target(light_surf);
    draw_clear(c_black);

    if (instance_exists(obj_lightsource)){
    with(obj_lightsource){
    
       draw_set_blend_mode(bm_subtract);
       draw_sprite_ext(spr_light_gradient,0, x , y , x_radious, y_radious,0, c_black,1);
       draw_set_blend_mode(bm_zero);
       draw_sprite_ext(spr_light_gradient,0, x , y , x_radious, y_radious,0,make_color_rgb(202,239,247) ,0.6);
       draw_set_blend_mode(bm_normal);
    }
}


    
    surface_reset_target();
    draw_surface_ext(light_surf,0,0,1,1,0,c_white,0.6);
    
}else{light_surf = surface_create(room_width,room_height);}

if (room == rm_tittle_screen) exit;

/*draw_set_color(c_orange);
draw_set_font(ft_debug);*/



var vx, vy;

vx = __view_get( e__VW.XView, 0 );
vy = __view_get( e__VW.YView, 0 );

draw_sprite_ext(spr_hud, 0, (vx + 2), (vy + 2), 1, 1, 0, c_white, hud_alpha);
draw_sprite_part_ext(spr_hud_bar_hp, 0, 0, 0, player_hp, 8, (vx + 26), (vy + 4), 1, 1, c_white, hud_alpha);
draw_sprite_part_ext(spr_hud_bar_energie,0,0,0, player_energie,4,vx + 26 ,vy + 17 , 1,1,c_white,hud_alpha);

draw_set_alpha(hud_alpha)

/*
switch(obj_scarga.player_state){
  case SCARGA_STAND: tx = "STAND";break;
  case SCARGA_WALK: tx = "WALK";break;
  case SCARGA_FALL: tx = "FALL";break;
  case SCARGA_JUMP: tx = "JUMP";break;
  case SCARGA_SHOOT: tx = "SHOOT";break;
  case SCARGA_CHARGED: tx = "CHARGED";break;
  case SCARGA_DASH: tx = "DASH";break;
  case SCARGA_WALL: tx = "WALL SLIDE";break;
  case SCARGA_WALLJUMP: tx = "WALL JUMP";break;
}

draw_text(vx + 2, vy + 40, "player_state: " + string(tx));*/


if (screen_alpha > 0) {
    draw_set_alpha(screen_alpha);
    draw_rectangle_color(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ), c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
}

/* */
/*  */
