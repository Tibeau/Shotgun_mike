// move sprite left or right
if (vel_x < 0)
{
	image_xscale = -1;
	image_yscale = 1;
}
else if (vel_x > 0)
{
	image_xscale = 1;
	image_yscale = 1;
}

if (hp <= 0)
{
	// This creates an instance of the character's 'defeated_object'. E.g. it will be obj_player_defeated
	// for obj_player.
	// It's created at the same position as the character itself.
	// It's created in the same layer as the character, by using its 'layer' variable.
	instance_create_layer(x, y, layer, defeated_object);

	// This destroys the character instance itself.
	instance_destroy();
}


if (no_hurt_frames > 0)
{
	no_hurt_frames -= 1;
	if (no_hurt_frames % 12 > 6)
	{
		image_alpha = 0;
	}
	else
	{
		image_alpha = 1;
	}
}