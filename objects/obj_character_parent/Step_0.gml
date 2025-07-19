// collision checking
var _move_count_x = abs(vel_x);
var _move_once_x = sign(vel_x);

repeat (_move_count_x)
{
	var _collision_found = check_collision(_move_once_x, 0);
	if (!_collision_found)
	{
		x += _move_once_x;
	}
	else
	{
		vel_x = 0;
		break;
	}
}


if (vel_y < -5) {
	vel_y = -5
}

var _move_count_y = abs(vel_y);
var _move_once_y = sign(vel_y);

repeat (_move_count_y)
{
	var _collision_found = check_collision(0, _move_once_y);

	if (!_collision_found)
	{
		y += _move_once_y;
	}
	else
	{
		vel_y = 0;
		break;
	}
}