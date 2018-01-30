//
enum MENU_OPTIONS { RESUME, NEW, QUIT };

// An array of menu options
menu[MENU_OPTIONS.RESUME] = "Resume Game";
menu[MENU_OPTIONS.NEW]    = "New Game";
menu[MENU_OPTIONS.QUIT]   = "Exit / Quit";

// Keeps track of which option is currently selected
menu_option_start = 1;
selected          = 1;

// An arrow instance
arrow = noone;

//
mouse_last_x = 0;
mouse_last_y = 0;

//
global.player_name = get_string("Please enter your name or initials: ", "Player 1");

