globalvar player_hp, player_energie, charge_energie;

container_hp = sprite_get_width(spr_hud_bar_hp);
container_energie = sprite_get_width(spr_hud_bar_energie);

player_hp = container_hp;
player_energie = container_energie;

charge_energie = true;

globalvar screen_shake, screen_alpha;

screen_shake = 0;
screen_alpha = 0;

hud_alpha = 1;

globalvar player_suit;
                         
var tile_size;
    tile_size = 16;
    
    var wcells;
        wcells = (room_width / tile_size);
        
    var hcells;
        hcells = (room_height / tile_size);
        
        
global.grid = mp_grid_create(0, 0, wcells, hcells, tile_size, tile_size);


              mp_grid_add_instances(global.grid, par_solid, true);
              
light_surf = surface_create(room_width,room_height);




