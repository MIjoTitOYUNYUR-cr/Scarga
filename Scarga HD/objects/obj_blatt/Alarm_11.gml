if (player_hurt == 1){
    switch (hurtbeep){
  case 0:hurtbeep = 1;image_alpha = 1;image_blend = c_orange;alarm[11] = 6;break;
   case 1:hurtbeep = 2;image_alpha = .75image_blend = c_white;alarm[11] = 6;break;
    case 2:hurtbeep = 3;image_alpha = 1;image_blend = c_orange;alarm[11] = 6;break;
     case 3:hurtbeep = 4; image_alpha = .75;image_blend = c_white;alarm[11] = 6;break;
      default:alarm[11] = 6;image_blend = c_orange;image_alpha = 1;break;
      }}    

