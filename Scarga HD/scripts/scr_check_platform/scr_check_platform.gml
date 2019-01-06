if (free == false){
 
     if (place_meeting(x, y + 1, obj_platform_green)){on_ground = "platform_green";}
else if (place_meeting(x, y + 1, obj_platform_band_left)){on_ground = "platform_band_left";}
else if (place_meeting(x, y + 1, obj_platform_band_right)){on_ground = "platform_band_right";}else{on_ground = "none";}

}else{

on_ground = "none";

}


switch(on_ground){
      case "platform_green":
      
         with(obj_platform_green){
         
     if (place_meeting(x, y - 1, other)){with(other){xfric = other.xspeed;}}
                                 
                                 }break;
      
      case "none": xfric = 0;break;
   
      case "platform_band_left": xfric = -1;break;
      case "platform_band_right": xfric = 1;break;
      
   }
