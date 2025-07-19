if (grounded)
{
	vel_y = -jump_speed;
	sprite_index = spr_player_jump;
	image_index = 0;
	grounded = false;
}