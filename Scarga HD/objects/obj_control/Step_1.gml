/// @description CAMERA
scr_game_get_input();

window_center();

var xx, yy;

if (instance_exists(obj_blatt) == true) {
    xx = obj_blatt.x yy = obj_blatt.y - 16
} else {
    xx = 0;
    yy = 0;
}

__view_set( e__VW.XView, 0, (__view_get( e__VW.XView, 0 ) * 4 + (xx - __view_get( e__VW.WView, 0 ) / 2)) / 5 );
__view_set( e__VW.YView, 0, (__view_get( e__VW.YView, 0 ) * 4 + (yy - __view_get( e__VW.HView, 0 ) / 2)) / 5 );

if (__view_get( e__VW.XView, 0 ) < 0) then __view_set( e__VW.XView, 0, 0 );
if (__view_get( e__VW.YView, 0 ) < 0) then __view_set( e__VW.YView, 0, 0 );
if (__view_get( e__VW.XView, 0 ) > (room_width - __view_get( e__VW.WView, 0 ))) then __view_set( e__VW.XView, 0, (room_width - __view_get( e__VW.WView, 0 )) );
if (__view_get( e__VW.YView, 0 ) > (room_height - __view_get( e__VW.HView, 0 ))) then __view_set( e__VW.YView, 0, (room_height - __view_get( e__VW.HView, 0 )) );

if (screen_shake) {

    __view_set( e__VW.Angle, 0, (irandom_range(-10, 10) * .10) )
    
    if (!alarm[11]){alarm[11] = 12;}
}


window_set_caption("FPS: " + string(fps));

