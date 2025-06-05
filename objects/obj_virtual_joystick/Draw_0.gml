// Desenhar joystick (base)
draw_set_alpha(0.5);
draw_circle(joystick_x, joystick_y, joystick_radius, false);
draw_set_alpha(1);

// Desenhar botão do joystick
var handle_x = joystick_x + lengthdir_x(joystick_distance, joystick_direction);
var handle_y = joystick_y + lengthdir_y(joystick_distance, joystick_direction);
draw_circle(handle_x, handle_y, joystick_handle_radius, true);

// Desenhar botão de ataque
draw_set_alpha(attack_button_pressed ? 0.8 : 0.5);
draw_circle(attack_button_x, attack_button_y, attack_button_radius, false);
draw_set_alpha(1);
draw_text(attack_button_x, attack_button_y - 10, "ATK");