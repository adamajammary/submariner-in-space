//
if (jump_boost >= laser_min_boost)
{
    // Create a laser at the same location as the submarine
    var laser = instance_create(x, y, object_laser_red_001);
    
    // Check if the laser was successfully created
    if (laser != noone)
    {
        // Set the laser properties
        laser.image_angle  = direction;
        laser.image_xscale = speed;
        laser.image_yscale = 5.0;
        laser.speed        = 0;
        
        // Delay the instance destruction.
        laser.alarm[0] = (room_speed * laser_lifetime);
    }
}

