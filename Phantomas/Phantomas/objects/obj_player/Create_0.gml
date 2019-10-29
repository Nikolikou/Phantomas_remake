/*
/// Inicialització de variables
grav  = 1;   // gravetat
spd   = 4;   // velocitat
jspd  = 16;  // velocitat de salt normal
jlspd = 8;   // velocitat de salt llarg
hspd  = 6;   // velocitat horitzontal
vspd  = 5;   // velocitat vertical
fric  = 1;   // fricció per moviment horitzontal
*/
/**************************************************************************************/

/// Inicialització de variables

hsp = 0;
vsp = 0;
hsp_frac = 0;
vsp_frac = 0;

hsp_acc = 0.50;
hsp_fric_ground = 0.50;
hsp_fric_air = 0.15;
hsp_walk = 4;
hsp_walk2 = 4;
hsp_wjump = 4;


vsp_jump = -9;
vsp_max = 10;
vsp_wjump = -8;
vsp_max_wall = 4;


onground = false;
onwall = 0;

grv = 0.3;
grv_wall = 0.02;

jumpbuffer = 0;
walljumpdelay = 0;
walljumpdelay_max = 17;


global.numSpawnX = x;
global.numSpawnY = y;

gamepad_set_axis_deadzone(0,0.7);