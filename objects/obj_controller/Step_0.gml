// Aplica movimento apenas se o player existir
if (instance_exists(obj_player)) {
    if (move_left) obj_player.hspeed = -4;
    if (move_right) obj_player.hspeed = 4;
    
    // Se nenhum botão estiver pressionado, para o movimento
    if (!move_left && !move_right && instance_exists(obj_player)) {
        obj_player.hspeed = 0;
    }
}