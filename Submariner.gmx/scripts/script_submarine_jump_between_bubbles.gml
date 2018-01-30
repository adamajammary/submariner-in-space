#define script_submarine_jump_between_bubbles
// Get an instance pointer to the nearest bubble object
var bubble = instance_place(x, y, object_bubble_001);

// Check which state the submarine is in
switch (jump_state)
{
    // Submarine has collided with a new bubble
    case SUBMARINE_STATES.FLYING_IN_SPACE:
        // Move the submarine towards the center of the bubble
        if (bubble != noone) 
        {
            script_submarine_move_to_bubble_center(bubble);
        }
        //
        else if ((hud_stats.step_count - jump_start_time) > (20 * room_speed)) 
        {
            direction   += 10;
            image_angle += 10;
            
            //
            jump_start_time = hud_stats.step_count;
        }
        
        break;
    // Submarine has jumped out of a bubble
    case SUBMARINE_STATES.EXIT_BUBBLE:
        if (bubble == noone) {
            jump_state = SUBMARINE_STATES.FLYING_IN_SPACE;
        }
        
        break;
    // Submarine is inside a bubble
    case SUBMARINE_STATES.INSIDE_BUBBLE:
        // Jump when the left mouse button is released
        if (mouse_check_button_released(mb_left) && (jump_boost > 0)) {
            script_submarine_jump_to_next_bubble(bubble);
        // Increase the jump boost while the left mouse button is pressed
        } else if (mouse_check_button(mb_left) && (bubble != noone)) {
            script_submarine_increase_jump_boost(bubble);
        }
        
        break;
}


#define script_submarine_move_to_bubble_center
//
var bubble = argument0;

// Move the submarine towards the center of the bubble
if (point_distance(x, y, bubble.x, bubble.y) >= (speed / 2))
{
    move_towards_point(bubble.x, bubble.y, speed);
    
    // Animation Start: Shrink the submarine and bubble
    script_submarine_scale_shrink(bubble);
}
else
{
    // Stop submarine movement and reset jump boost
    jump_boost = 0;
    jump_state = SUBMARINE_STATES.INSIDE_BUBBLE;
    speed      = 0;
    
    // Animation stop: Reset the submarine and bubble scales back to default
    script_submarine_scale_reset(bubble);
}


#define script_submarine_jump_to_next_bubble
//
var bubble = argument0;

// Set the direction based on rotation angle
direction  = image_angle;

// Set the speed based on jump boost
speed = (jump_boost * jump_speed);

// Change the jump state
jump_state      = SUBMARINE_STATES.EXIT_BUBBLE;
jump_start_time = hud_stats.step_count;

// Animation stop: Reset the submarine and bubble scales back to default
script_submarine_scale_reset(bubble);


#define script_submarine_increase_jump_boost
//
var bubble = argument0;

// Increase the jump boost
if ((jump_boost + boost_increase) <= 100) 
{
    jump_boost        += boost_increase;
    bubble.image_speed = 1.0;
    
    // Shrink the submarine while boosting
    if (image_xscale > image_scale_min_size)
    {
        image_xscale -= jump_shrink_scale;
        image_yscale -= jump_shrink_scale;
    } 
}
else
{
    bubble.image_index = (bubble.image_number - 1);
    bubble.image_speed = 0;
}

// Animation Start: Shrink the submarine and bubble while boosting
//script_submarine_scale_shrink(bubble);


#define script_submarine_scale_shrink
// Animation Start
var bubble = argument0;

// Shrink the submarine while boosting
if (image_xscale > image_scale_min_size)
{
    image_xscale -= jump_shrink_scale;
    image_yscale -= jump_shrink_scale;
} 
/*else
{
    image_xscale += (jump_shrink_scale * 2);
    image_yscale += (jump_shrink_scale * 2);
}*/

// Shrink the bubble while boosting
if (bubble.image_xscale > bubble.image_scale_min_size)
{
    bubble.image_xscale -= jump_shrink_scale;
    bubble.image_yscale -= jump_shrink_scale;
}
else
{
    bubble.image_xscale += (jump_shrink_scale * 2);
    bubble.image_yscale += (jump_shrink_scale * 2);
}

//
bubble.image_speed = 0;


#define script_submarine_scale_reset
//
var bubble = argument0;

// Animation stop: Reset the submarine and bubble scales back to default
image_xscale        = image_scale;
image_yscale        = image_scale;
//bubble.image_xscale = bubble.image_scale;
//bubble.image_yscale = bubble.image_scale;

//
//bubble.image_speed = bubble.animation_speed;

//
bubble.image_index = 0;
bubble.image_speed = 0;