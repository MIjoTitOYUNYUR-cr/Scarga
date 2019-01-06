if (player_energie > container_energie && charged_energie){player_energie = container_energie;}
if (player_energie < 0){player_energie = 0;}

if (instance_exists(obj_blatt)){

   var ss = obj_blatt.player_state;

         if (ss != BLATT_DASH && ss != BLATT_CHARGED && !key_charged && player_energie < container_energie){charged_energie = true;}else{charged_energie = false;}


}else{charged_energie = false;}





