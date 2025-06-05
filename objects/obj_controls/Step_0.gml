// Evento Step do obj_controls

if (mouse_check_button_pressed(mb_left)) {
    // Verificar se o toque foi nos botões e aplicar o movimento correspondente
    if (mouse_x >= left_button_left && mouse_x <= left_button_left + left_button_width &&
        mouse_y >= left_button_top && mouse_y <= left_button_top + left_button_height) {
        horizontal_speed = -5;  // Movimento para a esquerda
    }
    else if (mouse_x >= right_button_left && mouse_x <= right_button_left + right_button_width &&
             mouse_y >= right_button_top && mouse_y <= right_button_top + right_button_height) {
        horizontal_speed = 5;   // Movimento para a direita
    }
    else if (mouse_x >= jump_button_left && mouse_x <= jump_button_left + jump_button_width &&
             mouse_y >= jump_button_top && mouse_y <= jump_button_top + jump_button_height) {
        if (place_meeting(x, y + 1, obj_solid)) {
            vertical_speed = -10;  // Pulo
        }
    }
}
