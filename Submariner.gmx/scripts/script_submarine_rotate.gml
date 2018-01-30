// Rotates based on mouse position
image_angle = point_direction(x, y, mouse_x, mouse_y);

// Flip the sprite image based on rotation angle
if (image_angle > 270.0) {
    image_yscale = image_scale;
} else if (image_angle > 90.0) {
    image_yscale = -image_scale;
} else {
    image_yscale = image_scale;
}


