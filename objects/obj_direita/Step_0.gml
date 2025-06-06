if (device_mouse_check_button(0, mb_left)) {
    if (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), self)) {
        obj_controller.move_right = true;
    } else {
        obj_controller.move_right = false;
    }
} else {
    obj_controller.move_right = false;
}