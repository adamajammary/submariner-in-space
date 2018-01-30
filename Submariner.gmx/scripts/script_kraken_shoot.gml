// Start shooting missiles if the force shield is down
if ((image_xscale > image_scale) && ((hud_stats.step_count % 30) == 0))
{
    // Create a bullet
    var missile = instance_create(x, y, object_missile_001);
    
    // Set bullet properties
    if (missile != noone)
    {
        missile.direction    = shoot_direction;
        missile.image_angle  = shoot_direction;
        missile.speed        = shoot_speed;
        missile.image_xscale = 1.0;
        
        // Rotate the missile direction
        shoot_direction += 45;
    }
}

/*//
if (power_health <= 0) {
    with (missile) {
        instance_destroy();
    }
}*/

