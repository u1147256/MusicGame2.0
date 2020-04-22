global.last_level = 1;
global.hit = 0;
global.missed = 0;
global.time = 0;
global.pause = false;
alarm_set(0, 60);
audio_stop_all();
alarm_set(1, 4200);
