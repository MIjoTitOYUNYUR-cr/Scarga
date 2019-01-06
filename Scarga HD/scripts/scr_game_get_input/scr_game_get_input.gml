globalvar key_up, key_down, key_left, key_right, key_enter;

key_down = keyboard_check(vk_down);
key_up = keyboard_check(vk_up);
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);

globalvar key_up_press, key_down_press, key_left_press, key_right_press, key_enter_press, key_start_press;

key_down_press  = keyboard_check_pressed(vk_down);
key_up_press  = keyboard_check_pressed(vk_up);
key_left_press  = keyboard_check_pressed(vk_left);
key_right_press  = keyboard_check_pressed(vk_right);

key_enter_press = keyboard_check_pressed(vk_enter);
key_start_press = keyboard_check_pressed(ord("X")) || keyboard_check_pressed(ord("Z"))  ;


globalvar key_jump,key_jump_check, key_shoot, key_charged;

key_jump = keyboard_check_pressed(ord("X"));
key_jump_check = keyboard_check(ord("X"));
key_shoot = keyboard_check_pressed(ord("Z"));
key_charged = keyboard_check(ord("Z"));
