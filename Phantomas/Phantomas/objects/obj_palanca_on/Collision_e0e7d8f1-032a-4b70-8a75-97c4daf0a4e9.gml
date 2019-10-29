with (id_palanca) event_user(0);
instance_change(obj_palanca_off,0);
// Restar una palanca del marcador
obj_contador_palancas.__dnd_lives = obj_contador_palancas.__dnd_lives - 1;

//Executem so d'activar palanca
audio_play_sound(snd_palanca,1,0);