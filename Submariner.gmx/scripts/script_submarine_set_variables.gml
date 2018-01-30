// Valid submarine states
enum SUBMARINE_STATES { INSIDE_BUBBLE, EXIT_BUBBLE, FLYING_IN_SPACE };

//
boost_increase        = 4;
damage_taken          = false;
health                = 100;
health_decrease       = 10;
image_scale           = 0.15;
image_scale_min_size  = (image_scale * 0.5);
jump_boost            = 0;
jump_start_time       = 0;
jump_shrink_scale     = 0.01;
jump_speed            = 0.4;
jump_state            = SUBMARINE_STATES.INSIDE_BUBBLE;
laser_lifetime        = 3;
laser_min_boost       = 50;
score                 = 0;
score_increase        = 250;

//
image_xscale = image_scale;
image_yscale = image_scale;

