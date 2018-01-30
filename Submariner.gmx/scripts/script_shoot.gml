// Mouse input
if (use_mouse)
{
    // Shoot a bullet only if the player is not inside a bubble
    if (mouse_check_button(mb_left) && 
        (object_submarine_001.jump_state == SUBMARINE_STATES.FLYING_IN_SPACE))
    {
        // Create a bullet
        bullet_instance = instance_create(x, y, object_weapon_missile_001);
        
        // Set bullet properties
        if (bullet_instance != noone)
        {
            bullet_instance.direction    = image_angle;
            bullet_instance.image_angle  = image_angle;
            bullet_instance.speed        = shoot_speed;
            bullet_instance.image_xscale = 1.0;
        }
    }
}
// Keyboard input
else
{
    // KEYBOARD
}


