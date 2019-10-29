/// Sumar una vida
obj_controller_lives.__dnd_lives = obj_controller_lives.__dnd_lives + 1;
//Executem so de agafar vida
audio_play_sound(snd_live,1,0);
instance_destroy();

