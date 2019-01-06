/// @description IA
scr_enemie_motion();

if (instance_exists(obj_blatt) == true) {

    target = (distance_to_point(obj_blatt.x, obj_blatt.y - 16));

    switch (enemie_state) {
        case "iddle":

            sprite_index = spr_wavor_iddle;
            image_speed = 0.2;

            if (target < __view_get( e__VW.WView, 0 ) - 48) {
                enemie_state = "alert";
            }

            break;

        case "alert":

            sprite_index = spr_wavor_iddle;
            image_speed = 0.2;
            
            if (target > 24){
            if (obj_blatt.x > x){x_mirror = 1;}else{x_mirror = -1;}
            }

            if (target < __view_get( e__VW.WView, 0 ) / 2) {
                if (!alarm[0]) {
                     alarm[0] = (random_range(1, 2.5) * room_speed);
                }
            }
            if (target > __view_get( e__VW.WView, 0 ) - 48) {
                enemie_state = "iddle";
            }

            break;

        case "attack":
        
        sprite_index = spr_wavor_attack;
        image_speed  = 0.3;
        
            break;
    }

} else {
    target = 0;
    sprite_index = spr_wavor_iddle;
    image_speed = 0.2;
}

///HITBOX

var hitbox_x2 = x + sprite_get_bbox_left(sprite_index);
var hitbox_x1 = x + sprite_get_bbox_right(sprite_index);
var hitbox_y1 = y + sprite_get_bbox_top(sprite_index);
var hitbox_y2 = y + sprite_get_bbox_bottom(sprite_index);

hitbox = collision_rectangle(hitbox_x1 - 14,hitbox_y1 - 38,hitbox_x2 - 14,hitbox_y2 - 38, par_scarga_waepon,false,false);

if (hitbox != noone){damage = scr_change_damage();}

if (hitbox && !enemie_hurt){

enemie_hp -= damage;
enemie_hurt = 1;

sound_play(choose(wav_hurt, wav_hurt_2, wav_hurt_3));

image_alpha = 0.75;

alarm[10] = 30;
alarm[11] = 6;

 if (enemie_hp <= damage){instance_destroy(); instance_create(x,y - 14, obj_fx_enemie_destroy);}
}

