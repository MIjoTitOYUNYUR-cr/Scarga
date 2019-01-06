enemie_state = "attack";

if (enemie_state == "attack"){

if (target < 96){

        enemie_attack = choose("electrowave_explode","electrowave_explode","electro_path");
        

 }else{
 
        enemie_attack = choose("electrowave_explode","electro_path","electro_path");     
 
 } 
 
 sound_play(wav_charge_electrowave);
 
     }
 
 image_index   = 0;
 sprite_repeat = choose(1,2,2,3);
 repeat_index  = 0;

