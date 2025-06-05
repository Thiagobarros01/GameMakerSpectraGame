// Unifica controles (teclado + touch)
global.move_left = keyboard_check(ord("A")) || touch_left;
global.move_right = keyboard_check(ord("D")) || touch_right;
global.jump = keyboard_check(ord("W")) || touch_jump;
global.attack = mouse_check_button(mb_left) || touch_attack;

// Aplica controles no jogador
with (obj_player) {
    if (global.move_left) event_perform(ev_other, ev_user1); // MOVE LEFT
    if (global.move_right) event_perform(ev_other, ev_user2); // MOVE RIGHT
    if (global.jump) event_perform(ev_other, ev_user3); // JUMP
}

// Aplica ataque na arma
with (obj_weapon_parent) {
    if (global.attack) event_perform(ev_other, ev_user0); // ATTACK
}