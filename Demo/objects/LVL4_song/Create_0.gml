alarm_set(0, 60);
alarm_set(1, 5400);

timeline_index = timeline3;
timeline_position = 0;
timeline_running = true;
global.hit = 0;
global.missed = 0;
global.last_level = 3;
audio_stop_all();