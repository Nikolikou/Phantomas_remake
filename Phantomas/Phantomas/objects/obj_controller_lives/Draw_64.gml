/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
/// @DnDVersion : 1
/// @DnDHash : 792C5D40
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_live"
/// @DnDSaveInfo : "sprite" "fb409025-0848-4b03-897d-79b2ebc63952"
var l792C5D40_0 = sprite_get_width(spr_live);
var l792C5D40_1 = 0;
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
for(var l792C5D40_2 = __dnd_lives; l792C5D40_2 > 0; --l792C5D40_2) {
	draw_sprite(spr_live, 0, x + 0 + l792C5D40_1, y + 0);
	l792C5D40_1 += l792C5D40_0;
}