/*player_shoot = 0;

if (player_suit == BUEY_SUIT){

 var yy;
    
    if (sprite_index == spr_scarga_buey_walk){yy = 3;}else{yy = 0;}
    
         for (b = 0; b < 5; b += 1){
         
                 with(instance_create(x + (10 * x_side),y - 14 + yy,obj_scarga_bullet)){
                 
                       switch(other.b){
                       
                           case 0: direction = 25;break;
                           case 1: direction = 12.5;break;
                           case 2: direction = 0;break;
                           case 3: direction = 347.5;break;
                           case 4: direction = 335;break;
                           
                       }
                       
                       speed = (3.5 * other.x_side);
                       
                       sprite_index = spr_scarga_buey_bullet;
                     
                       sound_play(choose(wav_player_dispersive_shoot,wav_player_dispersive_shoot_2,wav_player_dispersive_shoot,3));
                     
         
         }
    
    }
               }

/* */
/*  */
