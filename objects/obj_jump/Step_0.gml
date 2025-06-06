if (device_mouse_check_button_pressed(0, mb_left)) {
    if (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), self)) {
        if (obj_player.grounded) {
            obj_player.vspeed = obj_player.jump_force;
            // Toca som de pulo se existir
            if (audio_exists(snd_jump)) audio_play_sound(snd_jump, 0, false);
        }
    }
}