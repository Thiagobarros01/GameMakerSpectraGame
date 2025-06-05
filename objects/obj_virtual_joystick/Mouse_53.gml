// Verificar se tocou no joystick
if (point_distance(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), joystick_x, joystick_y) <= joystick_radius)
{
    joystick_touch_id = 0;
}

// Verificar se tocou no botão de ataque
if (point_distance(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), attack_button_x, attack_button_y) <= attack_button_radius)
{
    attack_button_pressed = true;
    
    // Disparar evento de ataque (equivalente ao clique do mouse)
    with (obj_weapon_parent) {
        event_perform(ev_other, ev_user0); // Dispara o evento de ataque
    }
}