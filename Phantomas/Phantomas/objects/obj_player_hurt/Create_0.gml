alarma = room_speed;


// Efecte de tremolor
shake = false;

view_x = camera_get_view_x(view_camera[0]);
view_y = camera_get_view_y(view_camera[0]);

shake = true;
alarm[0] = 20;

//Executem so de ferida
audio_play_sound(snd_hit,1,0);