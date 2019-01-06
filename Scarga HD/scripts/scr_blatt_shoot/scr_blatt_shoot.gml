if (key_charged == 1){

    blaster_charged += .75;
    
    if (blaster_charged >= 25){
    if (!alarm[0]){alarm[0] = 6;}
    scr_player_charged_fx();
    }
    
    if (!sound_isplaying(wav_player_charged)){sound_loop(wav_player_charged);}
    
}else{

if (sound_isplaying(wav_player_charged)) {sound_stop(wav_player_charged);}

if (colorbeep != 0){colorbeep = 0; image_blend = c_white;}

if (blaster_charged != 0){

with(instance_create(x + (14 * x_side) + x_xprev,y - 17 + (vsp) * 3 ,obj_fx_blatt_shoot)){

                                  sprite_index = spr_blatt_shoot_effect; 
                                  image_xscale = other.x_side;
                                  
                                  }

         if (blaster_charged >= 30 && blaster_charged < 60){
   
                        with(instance_create(x + (5 * x_side) + x_xprev,y - 19,obj_blatt_bullet)){
                           
                                  image_xscale = other.x_side;
                    
                                  hspeed = (4 * image_xscale);
                                  
                                  sprite_index = spr_blatt_charged_bullet;
                                  image_speed = 0.15;
                                  image_index = 0;
                                  
                                  sound_play(wav_player_charged_shoot);

                                                                    }
   
   }else if (blaster_charged >= 60){
              
                         with(instance_create(x + x_xprev ,y - 20 ,obj_blatt_bullet)){
                           
                                  image_xscale = other.x_side;
                                  hspeed = (5 * image_xscale);
                                  
                                  sprite_index = spr_blatt_super_charged_bullet;
                                  image_speed = 0.15;
                                  image_index = 0;
                                  
                                  sound_play(wav_player_charged_shoot);

                                                                    }
  
   
   
   }else{
    
                         with(instance_create(x + (7 * x_side) + x_xprev,y - 15,obj_blatt_bullet)){
                           
                                  image_xscale = other.x_side;
                                  hspeed = (3.5 * image_xscale);
                                  
                                  sprite_index = spr_blatt_bullet;
                                  image_speed = 0.15;
                                  image_index = 0;
                                  
                                  sound_play(wav_player_shoot);

                                                                    }
   
   
   }

    blaster_charged = 0;
    }
    
}
