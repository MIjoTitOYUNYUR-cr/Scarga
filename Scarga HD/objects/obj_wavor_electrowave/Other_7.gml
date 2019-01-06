if (sprite_index == spr_wavor_bullet_destroy) {
    instance_destroy();
    
    
    for (n = 0; n < bullets_fragments; n += 1){
    
        switch(bullets_fragments){
        case 4:
          
           with(instance_create(x,y, obj_wavor_small_bullet)){
           
              switch(other.n){
                 case 0:direction = 45;break;
                 case 1:direction = 135;break;
                 case 2:direction = 225;break;
                 case 3:direction = 315;break;
              
              }
              
              speed = 2.5;
           
           }
           
          break;
          
          case 5:
          
           with(instance_create(x,y, obj_wavor_small_bullet)){
           
              switch(other.n){
                 case 0:direction = 90;break;
                 case 1:direction = 162;break;
                 case 2:direction = 234;break;
                 case 3:direction = 306;break;
                 case 4:direction = 18;break;
              
              }
              
              speed = 2.5;
           
           }
           
          break;
          
          case 6:
          
           with(instance_create(x,y, obj_wavor_small_bullet)){
           
              switch(other.n){
                 case 0:direction = 60;break;
                 case 1:direction = 120;break;
                 case 2:direction = 180;break;
                 case 3:direction = 240;break;
                 case 4:direction = 300;break;
                 case 5:direction = 360;break;
              
              }
              
              speed = 2.5;
           
           }
           
          break;
          
        }
    
    }
}

