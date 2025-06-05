// Evento Draw do obj_controls

draw_set_color(c_blue); // Define a cor do botão para azul
draw_roundrect(left_button_left, left_button_top, left_button_left + left_button_width, left_button_top + left_button_height, 20); // Botão Esquerda

draw_set_color(c_green); // Define a cor do botão para verde
draw_roundrect(right_button_left, right_button_top, right_button_left + right_button_width, right_button_top + right_button_height, 20); // Botão Direita

draw_set_color(c_yellow); // Define a cor do botão para amarelo
draw_roundrect(jump_button_left, jump_button_top, jump_button_left + jump_button_width, jump_button_top + jump_button_height, 20); // Botão Pulo
