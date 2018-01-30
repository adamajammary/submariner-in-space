//
if ((health <= 0) && (alarm[1] == -1))
{
    if (score > highscore_value(10)) {
        highscore_add(global.player_name, score);
    }
    
    //
    speed        = 0;
    sprite_index = sprite_explosion_001;
    
    // Play the explosion sound effect
    audio_play_sound(sound_explosion_001, 1, false);
    
    //
    alarm[1] = (room_speed * 2);
}

