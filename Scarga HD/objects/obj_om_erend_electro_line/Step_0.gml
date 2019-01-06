if (x_orientation == 1){
if (!place_meeting(x + lengthdir_x(3, image_angle) , y + lengthdir_y(3, image_angle) , par_solid)){

if (place_meeting(x + lengthdir_x(3, image_angle - 90), y + lengthdir_y(3, image_angle - 90), par_solid)){
 
         x += lengthdir_x(3, image_angle);
         y += lengthdir_y(3, image_angle);

}else{

         x += lengthdir_x(3, image_angle - 90);
         y += lengthdir_y(3, image_angle - 90);
         
         image_angle -= 90;

}
  }else{
  
         x += lengthdir_x(3, image_angle + 90);
         y += lengthdir_y(3, image_angle + 90);
         
         image_angle += 90; 
  
  }
  }else{
  if (!place_meeting(x - lengthdir_x(3, image_angle) , y + lengthdir_y(3, image_angle) , par_solid)){

if (place_meeting(x - lengthdir_x(3, image_angle - 90), y + lengthdir_y(3, image_angle - 90), par_solid)){
 
         x -= lengthdir_x(3, image_angle);
         y += lengthdir_y(3, image_angle);

}else{

         x -= lengthdir_x(3, image_angle - 90);
         y += lengthdir_y(3, image_angle - 90);
         
         image_angle -= 90;

}
  }else{
  
         x -= lengthdir_x(3, image_angle + 90);
         y += lengthdir_y(3, image_angle + 90);
         
         image_angle += 90; 
  
  }
  
  }

