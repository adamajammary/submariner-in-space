//
var space_filler      = 50;
var highscore_start_x = ((room_width / 3) * 2);
var highscore_start_y = ((room_height / 2) - space_filler);
var menu_start_x      = (room_width / 3);
var menu_start_y      = (room_height / 2);

//
draw_set_font(font_menu_options);
draw_set_halign(fa_left);

//
draw_set_color(c_gray);
draw_text(10, room_height - 40, "Use the arrow keys to move and up and down, and press ENTER to make a selection.");

//
draw_set_color(c_green);

//
for (var menu_option = menu_option_start; menu_option < array_length_1d(menu); menu_option++) 
{
    var menu_option_start_y = (menu_start_y + (menu_option * space_filler));
    
    //
    if (menu_option == selected) 
    {
        //
        with (arrow) {
            instance_destroy();
        }
        
        //
        arrow = instance_create((menu_start_x - space_filler), menu_option_start_y, object_menu_arrow_001);
    }
    
    //
    draw_text(menu_start_x, menu_option_start_y, string(string_upper(menu[menu_option])));
}

// Change font, and left-align text
draw_set_font(font_hud);
draw_set_halign(fa_left);

// Draw the highscore label
draw_text(highscore_start_x, highscore_start_y, "Highscores");

// Draw a border around the highscore list
draw_set_color(c_gray);
draw_rectangle_colour(
    highscore_start_x, (highscore_start_y + space_filler),      // x1, y1
    (room_width - space_filler), (room_height - space_filler),  // x2, y2
    c_white, c_white, c_white, c_white,                         // color top-left, top-right, bottom-right, bottom-left
    true                                                        // outlined (or filled in)?
);

// Draw the highscore list
draw_highscore(
    (highscore_start_x + 10), (highscore_start_y + space_filler + 10),  //x1, y1
    (room_width - space_filler - 10), (room_height - space_filler - 10) //x2, y2
);

