switch(room){
   case rm_tittle_screen:
   
     if (!sound_isplaying(midi_tittle_screen)){
          sound_stop_all();
          sound_loop(midi_tittle_screen);
     }break;
     
   case rm_great_highway:
   
     if (!sound_isplaying(midi_heliport)){
          sound_stop_all();
          sound_loop(midi_heliport);
     }break;

}

//window_set_size(1280/2,768/2);
window_set_size(1280,768);

light_surf = surface_create(room_width,room_height);

