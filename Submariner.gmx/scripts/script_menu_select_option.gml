//
if (keyboard_check_pressed(vk_up))
{
    if ((selected - 1) >= menu_option_start) {
        selected--;
    }
}
else if (keyboard_check_pressed(vk_down))
{
    if ((selected + 1) < array_length_1d(menu)) {
        selected++;
    }
}

//
if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_return))
{
    switch (selected)
    {
        case MENU_OPTIONS.RESUME:
            room_goto(room_level_001);
            break;
        case MENU_OPTIONS.NEW:
            menu_option_start = 0;
            selected          = 0;
            room_goto(room_instructions_001);
            break;
        case MENU_OPTIONS.QUIT:
            game_end();
            break;
        default:
            break;
    }
}

