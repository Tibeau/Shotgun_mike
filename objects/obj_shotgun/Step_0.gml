if (instance_exists(obj_player)) {
    // Position the shotgun relative to the player
    var facing = obj_player.image_xscale;
    var off_x = offset_x * facing;
    var off_y = offset_y;

    x = obj_player.x + off_x;
    y = obj_player.y + off_y;

    // Get angle to mouse
    image_angle = point_direction(x, y, mouse_x, mouse_y);

    if (image_angle > 90 && image_angle < 270) {
        image_yscale = -1;
    } else {
        image_yscale = 1;
    }
}
