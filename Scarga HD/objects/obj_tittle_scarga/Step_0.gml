if (option_select == "false") {

    if (tittle_fade < 1) {
        tittle_fade += 0.0125;
    } else {

        tittle_fade = 1;

        if (options_fade < 1) {
            options_fade += 0.025;
        } else {
            options_fade = 1;
        }

    }


    if (options_fade == 1) {

        // Arrows and options 


        if (key_down_press) {

            switch (options_case) {
                case 0:
                    options_case = 1;
                    sound_play(wav_menu_continue);
                    break;
                case 1:
                    options_case = 2;
                    sound_play(wav_menu_exit);
                    break;
            }

         

        }

        if (key_up_press) {

            switch (options_case) {
                case 1:
                    options_case = 0;
                    sound_play(wav_menu_newgame);
                    break;
                case 2:
                    options_case = 1;
                    sound_play(wav_menu_continue);
                    break;
            }


        }


    

    if (key_start_press || key_enter_press) {

        switch (options_case) {
            case 0:
                option_select = "new_game";
                screen_fade = 0;
                sound_play(wav_menu_enter);
                break;
                //case 1:options_case = 1;break;
			case 2:
			game_end();
			break;
        }

    }
}else{

if (key_enter_press || key_start_press ) {
        tittle_fade = 1;
        options_fade = 1;
    }

}
} else {

    if (option_select == "new_game") {

        if (screen_fade < 1) {
            screen_fade += 0.015;
        } else {
            
            with(obj_control){screen_alpha = 1;}
         
            room_goto(rm_great_highway);
         
        }


    }

}

