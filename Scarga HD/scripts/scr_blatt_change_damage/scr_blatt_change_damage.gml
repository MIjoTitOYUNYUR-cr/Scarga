var dmg;

switch(hitbox.object_index){
       case obj_wavor: dmg = 4; break;
       case obj_wavor_bullet: dmg = 8; break;
       case obj_wavor_small_bullet: dmg = 4; break;
       case obj_wavor_electrowave: dmg = 15;break;
       case obj_om_erend_electrowave: dmg = 8;break;
       case obj_om_erend_electro_line: dmg = 3;break;
       
       case obj_om_erend_left_arm:
               
           if (hitbox.state == "fall"){dmg = 10;}else{dmg = 3;}
       
       break;
       case obj_om_erend_right_arm:
               
           if (hitbox.state == "fall"){dmg = 10;}else{dmg = 3;}
       
       break;
       default: damage = 3.5; break;
     }
     
     return(dmg);
     
