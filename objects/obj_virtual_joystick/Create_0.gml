// Configurações do joystick
joystick_radius = 64; // Raio do joystick
joystick_x = joystick_radius + 20; // Posição X
joystick_y = room_height - joystick_radius - 20; // Posição Y
joystick_handle_radius = 24; // Raio do botão do joystick
joystick_touch_id = -1; // ID do toque (-1 significa não ativo)
joystick_direction = 0; // Direção atual
joystick_distance = 0; // Distância atual

// Configurações do botão de ataque
attack_button_radius = 48;
attack_button_x = room_width - attack_button_radius - 20;
attack_button_y = room_height - attack_button_radius - 20;
attack_button_pressed = false;

// Atualizar joystick se estiver ativo
if (joystick_touch_id != -1)
{
    var touch_x = device_mouse_x_to_gui(joystick_touch_id);
    var touch_y = device_mouse_y_to_gui(joystick_touch_id);
    
    // Calcular direção e distância
    joystick_direction = point_direction(joystick_x, joystick_y, touch_x, touch_y);
    joystick_distance = point_distance(joystick_x, joystick_y, touch_x, touch_y);
    
    // Limitar distância
    if (joystick_distance > joystick_radius)
    {
        joystick_distance = joystick_radius;
    }
    
    // Controlar o jogador
    with (obj_player)
    {
        // Converter direção do joystick em movimento
        var move = joystick_distance / joystick_radius; // Intensidade (0 a 1)
        
        if (joystick_direction < 90 || joystick_direction > 270)
        {
            // Direita
            horizontal_speed = move_speed * move;
            event_perform(ev_other, ev_user2); // Dispara evento de mover para direita
        }
        else
        {
            // Esquerda
            horizontal_speed = -move_speed * move;
            event_perform(ev_other, ev_user1); // Dispara evento de mover para esquerda
        }
    }
}
else
{
    joystick_distance = 0;
}