// Apretar tecla Escape per sortir del joc
if keyboard_check_pressed(vk_escape) game_end();


// Si el comptador de vides arruba a 0 s'acaba el joc
if (obj_controller_lives.__dnd_lives = 0) {
	
   // Sprite de Game Over uns segons...
   draw_sprite(spr_pantalla_GameOver,image_index,1,1);
   alarm[0] = room_speed * 3;
   
   // reiniciem el Joc
   game_restart();
}

