alarm_set(0, 60);
alarm_set(1, 4950);

timeline_index = timeline2;
timeline_position = 0;
timeline_running = true;
global.hit = 0;
global.missed = 0;
global.last_level = 2;
audio_stop_all();