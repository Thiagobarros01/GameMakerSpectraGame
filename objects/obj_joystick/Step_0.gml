// Verifica toques
if (device_mouse_check_button(0, mb_left)) {
    if (touch_id == -1) {
        // Novo toque - ativa joystick
        touch_id = 0;
        base_x = device_mouse_x_to_gui(0);
        base_y = device_mouse_y_to_gui(0);
        handle.x = base_x;
        handle.y = base_y;
        handle.visible = true;
    }
    
    // Atualiza posição do handle
    var mx = device_mouse_x_to_gui(touch_id);
    var my = device_mouse_y_to_gui(touch_id);
    var dx = mx - base_x;
    var dy = my - base_y;
    var dist = point_distance(0, 0, dx, dy);
    
    // Limita ao raio máximo
    if (dist > joy_radius) {
        dx = dx * joy_radius / dist;
        dy = dy * joy_radius / dist;
    }
    
    handle.x = base_x + dx;
    handle.y = base_y + dy;
    
    // Calcula saída normalizada
    output_x = dx / joy_radius;
    output_y = dy / joy_radius;
} else {
    // Toque terminou - reseta
    touch_id = -1;
    output_x = 0;
    output_y = 0;
    handle.visible = false;
}