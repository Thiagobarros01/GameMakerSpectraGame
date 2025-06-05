var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

// Verifica em qual área foi o toque
touch_left = point_in_rectangle(mx, my, left_area[0], left_area[1], left_area[2], left_area[3]);
touch_right = point_in_rectangle(mx, my, right_area[0], right_area[1], right_area[2], right_area[3]);
touch_jump = point_in_rectangle(mx, my, jump_area[0], jump_area[1], jump_area[2], jump_area[3]);
touch_attack = point_in_rectangle(mx, my, attack_area[0], attack_area[1], attack_area[2], attack_area[3]);