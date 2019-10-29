if (alarma > 0){
	alarma--;
} else if (alarma == 0){  

   /// Resetear pantalla
   //room_restart();
   x = global.numSpawnX;
   y = global.numSpawnY;
   //Canviar instancia a obj_player_hurt
   instance_change(obj_player, true);
   alarma = -1;

   /// Restar una vida
   obj_controller_lives.__dnd_lives = obj_controller_lives.__dnd_lives - 1;

}



if (shake){
   var range = 3;
   camera_set_view_pos(view_camera[0], view_x+random_range(-range, range), view_y+random_range(-range, range));
} else {
   	camera_set_view_pos(view_camera[0], view_x, view_y);
}


