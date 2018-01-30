// Increase the step counter
step_count++;

// 
if (keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_space)) {
    room_goto(room_menu_001);
}

