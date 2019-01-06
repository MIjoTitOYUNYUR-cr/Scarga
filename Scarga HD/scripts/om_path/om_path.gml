if (path_exists(path) == false) {
                path = path_add();
                speed = 2;
            }
            
            if (mp_grid_path(global.grid, path, argument0, argument1, argument2, argument3, true)) {
                path_start(path, argument4, 0, true);
           }
