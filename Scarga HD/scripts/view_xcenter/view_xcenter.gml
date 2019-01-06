var x_center;
var sprite_x;

    sprite_x = floor(sprite_get_width(argument0)/2);
    x_center = ((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2) - sprite_x)
    
return(x_center);
