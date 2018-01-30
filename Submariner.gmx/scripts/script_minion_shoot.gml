//
if ((hud_stats.step_count % 150) == 0)
{
    var bullet = instance_create(x, y, object_minion_bullet_001);
    
    bullet.direction    = point_direction(x, y, object_submarine_001.x, object_submarine_001.y);
    bullet.image_angle  = (bullet.direction - 90);
    bullet.image_speed  = 0;
    bullet.image_xscale = bullet.image_scale;
    bullet.image_yscale = bullet.image_scale;
    bullet.speed        = shoot_speed;
}

