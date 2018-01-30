// Increase the time passed once every second
if ((step_count % room_speed) == 0)
{
    var time_hours, time_minutes, time_seconds;
    
    // Extract hours, minutes and seconds from total seconds
    time_seconds = floor(step_count / room_speed);
    time_hours   = floor(time_seconds / 3600);
    time_minutes = floor((time_seconds % 3600) / 60);
    time_seconds = floor((time_seconds % 3600) % 60);
    
    // Convert time decimals to strings
    string_hours   = string(time_hours);
    string_minutes = string(time_minutes);
    string_seconds = string(time_seconds);
    
    // Pad strings using format "00:00:00"
    if (time_hours < 10) {
        string_hours = ("0" + string_hours);
    }
    if (time_minutes < 10) {
        string_minutes = ("0" + string_minutes);
    }
    if (time_seconds < 10) {
        string_seconds = ("0" + string_seconds);
    }
}

// Set the font properties
draw_set_font(font_hud);
draw_set_halign(fa_left);

// Draw the time passed
draw_set_colour(c_gray);
draw_text(10, 10, ("Time: " + string_hours + ":" + string_minutes + ":" + string_seconds));

// Draw the health bar label
draw_set_colour(c_gray);
draw_text(200, 10, "Health: ");

// Draw the health bar
draw_healthbar(
    280,        // x-pos
    10,         // y-pos
    380,        // x2-pos
    30,         // y2-pos
    health,     // percentage
    c_dkgray,   // background color
    c_red,      // color when level is 0%
    c_green,    // color when level is 100%
    0,          // Where the bar is 'anchored' (0 = left, 1 = right, 2 = top, 3 = bottom)
    true,       // draw background?
    true        // 1px wide border on alements?
)

// Draw the score
draw_set_colour(c_gray);
draw_text(450, 10, (global.player_name + ": " + string(score)));

//
var boss_health = 0;
draw_set_colour(c_gray);

//
if (instance_exists(object_force_field_001)) 
{
    boss_health = object_force_field_001.force_power;
    draw_text(700, 10, "Force Field: ");
}
else if (instance_exists(object_kraken_001)) 
{
    boss_health = object_kraken_001.power_health;
    draw_text(700, 10, "Kraken: ");
}

// Draw the boss health bar
draw_healthbar(
    850,        // x-pos
    10,         // y-pos
    950,        // x2-pos
    30,         // y2-pos
    boss_health,// percentage
    c_dkgray,   // background color
    c_red,      // color when level is 0%
    c_green,    // color when level is 100%
    0,          // Where the bar is 'anchored' (0 = left, 1 = right, 2 = top, 3 = bottom)
    true,       // draw background?
    true        // 1px wide border on alements?
)

