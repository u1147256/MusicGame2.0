alarm_set(0, 50);
audio_stop_all();
global.time = 0;
global.list = ds_list_create();

timeline_index = timeline0;
timeline_position = 0;
//timeline_running = true;