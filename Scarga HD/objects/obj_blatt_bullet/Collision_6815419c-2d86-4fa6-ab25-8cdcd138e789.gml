switch (sprite_index) {
    case spr_blatt_bullet:
        with(instance_create(x + (2 * image_xscale), y - 4, obj_fx_blatt_bullet_destroy)) {

            sprite_index = spr_blatt_bullet_explode;
            image_speed = 0.24;
            image_xscale = other.image_xscale;

        }
        break;

    case spr_blatt_charged_bullet:
        with(instance_create(x + (16 * image_xscale), y - 3, obj_fx_blatt_bullet_destroy)) {

            sprite_index = spr_blatt_charged_bullet_explode;
            image_speed = 0.30;
            image_xscale = other.image_xscale;

        }
        break;

    case spr_blatt_super_charged_bullet:
        with(instance_create(x + (34 * image_xscale), y - 1, obj_fx_blatt_bullet_destroy)) {

            sprite_index = spr_blatt_super_charged_bullet_explode;
            image_speed = 0.30;
            image_xscale = other.image_xscale;

        }
        break;
}




    instance_destroy();


