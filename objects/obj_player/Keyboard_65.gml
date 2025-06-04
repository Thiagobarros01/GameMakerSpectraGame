/// @description MOVE LEFT

//If the player is not dead, you can move.
if (!obj_game_manager.player_dead)
{
	// The minus sign before the variable indicates leftward movement.
	horizontal_speed = -move_speed;
}