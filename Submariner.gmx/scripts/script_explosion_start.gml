// Make the bullet explode on impact
if (alarm[0] == -1) 
{
    // Stop the bullet, and start the explosion animation
    speed        = 0;
    sprite_index = sprite_explosion_001;
    image_speed  = 1.0;
    
    // Play the explosion sound effect
    audio_play_sound(sound_explosion_001, 1, false);
    
    // Delay instance destruction
    alarm[0] = (room_speed / 5);
}

