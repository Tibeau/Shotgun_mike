if (mouse_x > x) {
    image_xscale = 1; 
} else {
    image_xscale = -1;
}

switch (sprite_index)
{
	case spr_player_walk:
		if (vel_x == 0)
		{
			sprite_index = spr_player_idle;
		}
		else
		{
			var moving_against_facing = sign(vel_x) != image_xscale;
			image_speed = 1;
			if (moving_against_facing)
			{
				image_speed = -1;
			}
		}
		if (vel_y > 1)
		{
			sprite_index = spr_player_fall;
			image_index = 0;
		}
		break;

	case spr_player_jump:
		if (vel_y >= 0)
		{
			sprite_index = spr_player_fall;
			image_index = 0;
			image_speed = 1;
		}
		break;

	case spr_player_fall:
		if (grounded)
		{
			sprite_index = spr_player_idle;
			image_speed = 1;
		}
		break;

	default:
		image_speed = 1;
		break;
}