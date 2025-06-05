// Configurações do joystick
joy_radius = 64; // Raio máximo
touch_id = -1; // ID do toque
base_x = x; // Posição inicial X
base_y = y; // Posição inicial Y
handle = instance_create_layer(x, y, layer, obj_joystick_handle); // Cria o handle
handle.visible = false; // Esconde inicialmente

// Valores de saída (-1 a 1)
output_x = 0;
output_y = 0;