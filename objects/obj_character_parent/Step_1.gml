grounded = check_collision(0, 1);

if (grounded)
{
	// last grounded position
	grounded_x = x;
	grounded_y = y;
}

// apply friction to player
if (round(vel_x) != 0)
{
	// friction calculation
	var _friction_applied = sign(vel_x) * friction_power;

	if (!grounded)
	{
		_friction_applied = _friction_applied / 5;
	}

	vel_x -= _friction_applied;
}
else
{
	vel_x = 0;
}


//apply gravity
if (vel_y <= 3) {
vel_y += grav_speed;
}
