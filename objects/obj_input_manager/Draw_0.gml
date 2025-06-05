// Desenha áreas de toque (só para debug)
draw_set_alpha(0.3);
draw_rectangle(left_area[0], left_area[1], left_area[2], left_area[3], false);
draw_rectangle(right_area[0], right_area[1], right_area[2], right_area[3], false);
draw_rectangle(jump_area[0], jump_area[1], jump_area[2], jump_area[3], false);
draw_rectangle(attack_area[0], attack_area[1], attack_area[2], attack_area[3], false);
draw_set_alpha(1);