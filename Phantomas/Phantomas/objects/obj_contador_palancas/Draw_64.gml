/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
/// @DnDVersion : 1
/// @DnDHash : 23B4B70E
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_palanca_on"
/// @DnDSaveInfo : "sprite" "6845571d-8576-40a0-8306-a6344603d45a"
var l23B4B70E_0 = sprite_get_width(spr_palanca_on);
var l23B4B70E_1 = 0;
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
for(var l23B4B70E_2 = __dnd_lives; l23B4B70E_2 > 0; --l23B4B70E_2) {
	draw_sprite(spr_palanca_on, 0, x + 0 + l23B4B70E_1, y + 0);
	l23B4B70E_1 += l23B4B70E_0;
}