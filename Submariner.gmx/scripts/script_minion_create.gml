//
var kraken_scale          = 1.0;
var minion;
var minion_scale          = 0.5;
var start_position_x;
var start_position_y;
var start_position_offset = 200;

// Scale Kraken up to full size
image_xscale = kraken_scale;
image_yscale = kraken_scale;

// 1st minion: Top
start_position_x    = x;
start_position_y    = (y - start_position_offset);
minion              = instance_create(start_position_x, start_position_y, object_minion_001);
minion.image_xscale = minion_scale;
minion.image_yscale = minion_scale;

// 2nd minion: Right
start_position_x    = (x + start_position_offset);
start_position_y    = y;
minion              = instance_create(start_position_x, start_position_y, object_minion_001);
minion.image_xscale = minion_scale;
minion.image_yscale = minion_scale;

// 3rd minion: Bottom
start_position_x    = x;
start_position_y    = (y + start_position_offset);
minion              = instance_create(start_position_x, start_position_y, object_minion_001);
minion.image_xscale = minion_scale;
minion.image_yscale = minion_scale;

// 4th minion: Left
start_position_x    = (x - start_position_offset);
start_position_y    = y;
minion              = instance_create(start_position_x, start_position_y, object_minion_001);
minion.image_xscale = minion_scale;
minion.image_yscale = minion_scale;

