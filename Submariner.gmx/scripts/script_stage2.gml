//
if (force_power <= 0)
{
    // Set the font properties
    draw_set_font(font_stage2);
    
    // Draw the time passed
    draw_set_colour(c_red);
    draw_set_halign(fa_center);
    draw_text(
        (room_width / 2), 
        140, 
        ("STAGE 2 - THE MINIONS ARRIVE")
    );
}

