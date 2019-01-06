var damage;

switch(hitbox.object_index){
  
      case obj_blatt_bullet:
          
             switch(hitbox.sprite_index){
                case spr_blatt_bullet:damage = 1.5;break;
                case spr_blatt_charged_bullet:damage = 3.5;break;
                case spr_blatt_super_charged_bullet: damage = 5;break;
                
             }
  
             break;

     }
     
     return(damage);
     
