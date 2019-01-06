part_sys_charged = part_system_create();
                   part_system_depth(part_sys_charged,choose(1,-1));
                
part_ty_charged = part_type_create();
    
                  part_type_sprite(part_ty_charged,spr_blatt_particles_charged,false,false,true);
                                             
                  part_type_alpha3(part_ty_charged,0.7,0.9,0.1);
                  part_type_color3(part_ty_charged,col_1,
                                                   col_2,
                                                   col_3);
                                                   
                  
                  part_type_life(part_ty_charged,15,30);
                  
             if (blaster_charged >= 20 && blaster_charged < 50){
                  part_type_speed(part_ty_charged,0.25,.75,0.0325,0);
                  part_type_direction(part_ty_charged,0,360,10,0);
       }else if (blaster_charged >= 50){
                  part_type_speed(part_ty_charged,0.325,0.85,0.05,0);
                  part_type_direction(part_ty_charged,0,360,15,0);
                  }
                 
               
               
part_em_charged = part_emitter_create(part_sys_charged);
                  part_emitter_region(part_sys_charged,part_em_charged,x - 26 * x_mirror,x + 26 * x_mirror,y - 34 ,y + 6,ps_shape_ellipse,ps_distr_gaussian);
                  part_emitter_burst(part_sys_charged,part_em_charged,part_ty_charged,1);
