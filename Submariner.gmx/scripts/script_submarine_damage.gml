//
if (!damage_taken)
{
    damage_taken = true;
    health      -= health_decrease;
    sprite_index = sprite_submarine_003;
    alarm[0]     = (room_speed * 2);
}

