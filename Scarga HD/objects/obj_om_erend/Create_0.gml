enemy_state = "iddle";

left_arm = instance_create(x + 18, y + 70, obj_om_erend_left_arm);
right_arm = instance_create(x + 113, y + 70, obj_om_erend_right_arm);

with(left_arm){state = "repose" y_iddle = ystart; x_iddle = xstart;}
with(right_arm){state = "repose" y_iddle = ystart; x_iddle = xstart;}


action_number = 0;

