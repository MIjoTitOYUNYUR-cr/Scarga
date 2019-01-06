switch (state) {
    case "return":

        if (point_distance(x, y, x_iddle, y_iddle) < 4) {
            om_path_delete();
            state = "repose";
        } else {
            om_path(x, y, x_iddle, y_iddle,3);
        }
        image_index = 0;
        image_speed = 0;

        break;
    case "repose":

        image_speed = 0;
        image_index = 0;

        x = x_iddle;
        y = y_iddle;

        om_path_delete();

        if (y_draw != y_axis * 3) {
            y_draw += y_axis / 6;
        } else {
            y_axis *= -1;
        }

        if (keyboard_check_pressed(ord("N"))) {
            state = "stand-up";
            y_draw = 0;
            om_path_delete();
        }

        break;

    case "stand-up":

        if (round(y) > (y_iddle - 64)) {
            y -= 3;
            image_index = 0;
        } else {
            state = "towards";

            if (alarm[0] != 0) {
                alarm[0] = 0;
            }
        }
        break;

    case "towards":
        y = (y_iddle - 64);

        image_index = 1;

        om_path(x, y, obj_blatt.x, y, 4);

        if (!alarm[0]) {
            alarm[0] = 60;
        }
        break;

    case "fall":

        om_path_delete();

        image_speed = 0;
        image_index = 1;

        if (!place_meeting(x, y + 6, par_solid)) {
            y += 6;
        } else {

            state = "return";

            with(instance_create(x + 1, y, obj_fx)) {
                sprite_index = spr_om_erend_smash_fx;
                image_speed = .25;
                image_alpha = 0.6;
            }

            screen_shake = 1;

            instance_create(x, y, obj_om_erend_electro_line);
        }

        break;
}



