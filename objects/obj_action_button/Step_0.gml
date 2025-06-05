// Verifica toques
if (device_mouse_check_button(0, mb_left)) {
    if (touch_id == -1 && position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)) {
        touch_id = 0;
        
        // Executa ataque se tiver arma equipada
        with (obj_player) {
            if (attack_cooldown <= 0 && instance_exists(current_weapon)) {
                // Dispara a arma atual
                with (current_weapon) {
                    // Lógica de ataque específica para cada arma
                    if (object_index == obj_gun) {
                        // Código específico para a arma
                        instance_create_layer(x, y, "Instances", obj_bullet);
                    }
                    else if (object_index == obj_knife_pickup) {
                        // Código específico para a faca
                        instance_create_layer(x, y, "Instances", obj_knife_attack);
                    }
                }
                attack_cooldown = 15; // Cooldown do ataque
            }
        }
    }
} else {
    touch_id = -1;
}