if (vel_x >= -move_speed){
vel_x = -move_speed;
}

if (grounded)
{
	sprite_index = spr_player_walk;
}