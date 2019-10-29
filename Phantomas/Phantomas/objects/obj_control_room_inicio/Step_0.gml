keyAnyKey = keyboard_check_pressed(vk_anykey) || gamepad_button_check_pressed(0,gp_face1) || gamepad_button_check_pressed(0,gp_face2);
keyescape = keyboard_check_pressed(vk_escape);

if (keyescape){
	game_end();
}else if (keyAnyKey){
         // Saltem a la sala del joc
   	     room_goto_next();
}