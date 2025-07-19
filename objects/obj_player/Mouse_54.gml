if (shotgun_cooldown <= 0 && shotgun_ammo > 0) {
	shotgun_ammo -= 1
    // 1. Get direction from mouse to player
    var dx = x - mouse_x;
    var dy = y - mouse_y;

    // 2. Normalize
    var length = point_distance(0, 0, dx, dy);
    if (length != 0) {
        dx /= length;
        dy /= length;
    }

    // 3. Apply launch
    vel_x += dx * shotgun_bounce ;
    vel_y += dy * shotgun_bounce;

    // 4. Set cooldown (e.g. 30 frames = 0.5 seconds at 60fps)
    shotgun_cooldown = 20;
}