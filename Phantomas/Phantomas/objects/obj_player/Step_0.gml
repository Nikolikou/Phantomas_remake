///@desc Obtenir controls
key_left = keyboard_check_direct(vk_left)   || (gamepad_axis_value(0,gp_axislh) < 0);
key_right = keyboard_check_direct(vk_right) || (gamepad_axis_value(0,gp_axislh) > 0);//????
key_jump = keyboard_check_pressed(vk_space)    || keyboard_check_pressed(vk_up)   || (gamepad_button_check_pressed(0,gp_face1));
key_jumpL = keyboard_check_pressed(vk_control) || keyboard_check_pressed(vk_down) || (gamepad_button_check_pressed(0,gp_face2));


//Calc moviment horitzontal --------------------------------------------------
walljumpdelay = max(walljumpdelay-1,0);
if (walljumpdelay == 0){
	var dir = key_right - key_left;
	hsp += dir * hsp_acc;
	if (dir == 0){
	   var hsp_fric_final = hsp_fric_ground;
	   if (!onground) hsp_fric_final = hsp_fric_air;
	   hsp = Approach(hsp,0,hsp_fric_final);
	}
	hsp = clamp(hsp,-hsp_walk,hsp_walk);
}


//Salt a la paret --------------------------------------------------
if (onwall != 0) && (!onground) && (key_jump){
   walljumpdelay = walljumpdelay_max;
   hsp = -onwall * hsp_wjump;
   vsp = vsp_wjump;   
   hsp_frac = 0;
   vsp_frac = 0;   
   audio_play_sound(snd_jump,1,0);
} else if (onwall != 0) && (!onground) && (key_jumpL){
          walljumpdelay = walljumpdelay_max;
		  hsp = -onwall * hsp_wjump*2.3;
		  vsp = vsp_jump/1.7;
		  vsp_frac = 0;	 
  	      hsp_frac = 0;
		  hsp_walk	= hsp_walk*2.1;	
		  audio_play_sound(snd_jump,1,0);
}


// Calc moviment vertical --------------------------------------------------
var grv_final = grv;
var vsp_max_final = vsp_max;
if (onwall != 0) && (vsp > 0){
   grv_final = grv_wall;
   vsp_max_final = vsp_max_wall;
}
vsp += grv_final;
vsp = clamp(vsp,-vsp_max_final, vsp_max_final);


// Salts des de terra --------------------------------------------------
if (jumpbuffer > 0){
    jumpbuffer --;
	if (key_jump){
	   jumpbuffer = 0;
	   vsp = vsp_jump;
	   vsp_frac = 0;
	   hsp_walk	= hsp_walk/2;
	   audio_play_sound(snd_jump,1,0);
	}		
	if (key_jumpL){
	   jumpbuffer = 0;
	   vsp = vsp_jump/1.7;
	   vsp_frac = 0;	   
	   hsp_walk	= hsp_walk*2;   	   
	   audio_play_sound(snd_jump,1,0);
	}		
	
}
vsp = clamp(vsp,-vsp_max,vsp_max);



//Descartar fraccions i obtenir velocitat en enters --------------------------------------------------
hsp += hsp_frac;
vsp += vsp_frac;
hsp_frac = frac(hsp);
vsp_frac = frac(vsp);
hsp -= hsp_frac;
vsp -= vsp_frac;


//Colisions horitzontals
if (place_meeting(x+hsp,y,obj_block)){
	var onepixel = sign(hsp);
	while (!place_meeting(x+onepixel,y,obj_block)) x += onepixel;
	hsp = 0;
	hsp_frac = 0;
}

//Moviment horitzontal --------------------------------------------------
x += hsp;


//Colisions verticals --------------------------------------------------
if (place_meeting(x,y+vsp,obj_block)){
	var onepixel = sign(vsp);
	while (!place_meeting(x,y+onepixel,obj_block)) y += onepixel;
	vsp = 0;
	vsp_frac = 0;
	hsp_walk = hsp_walk2;
}
//Moviment vertical
y += vsp;




// Càlcul d'estat actual --------------------------------------------------
onground = place_meeting(x,y+1,obj_block);
onwall =  place_meeting(x+1,y,obj_block) - place_meeting(x-1,y,obj_block);
if (onground) jumpbuffer = 6;

//Ajustament sprites --------------------------------------------------
image_speed = 1;
if (hsp != 0) image_xscale = sign(hsp);
if (!onground){
   if (onwall != 0){
       sprite_index = spr_player_wall;
	   image_xscale = onwall;
	   
	   var side = bbox_left;
	   if (onwall == 1) side = bbox_right;
   } else {
       sprite_index = spr_player_air;
	   
       image_speed = 0;
       image_index = (vsp > 0);
   }
} else {
  if (hsp != 0) sprite_index = spr_player_run; else sprite_index = spr_player;  
}















































