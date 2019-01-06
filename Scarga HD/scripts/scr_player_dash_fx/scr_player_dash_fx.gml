

  part_dash_sys = part_system_create();
                  part_system_depth(part_dash_sys,depth + 1);
                  
  part_dash_type = part_type_create();


       if (player_state == BLATT_DASH){
                   part_type_sprite(part_dash_type,spr_blatt_particles_dash,0,0,0);
                   }else{
                   part_type_sprite(part_dash_type,spr_blatt_particles_dash_fall,0,0,0);
                   }
    
                   part_type_alpha1(part_dash_type,0.4);
                   part_type_color3(part_dash_type,col_3,col_2,col_1);
                   part_type_scale(part_dash_type,x_mirror,1);
                   part_type_life(part_dash_type,5,5);
                   
                   
  part_dash_em = part_emitter_create(part_dash_sys);
                 part_emitter_region(part_dash_sys,part_dash_em,x,x,y,y,ps_shape_line,ps_distr_invgaussian);
                 part_emitter_burst(part_dash_sys,part_dash_em,part_dash_type,1);
