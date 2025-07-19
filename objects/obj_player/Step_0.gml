event_inherited();

if (shotgun_cooldown > 0) {
    shotgun_cooldown -= 1;
}

if (shotgun_ammo < shotgun_max_ammo) {
    shotgun_reload_timer++;

    if (shotgun_reload_timer >= shotgun_reload_delay) {
        shotgun_ammo += 1;
        shotgun_reload_timer = 0;
    }
} else {
    shotgun_reload_timer = 0;
}
