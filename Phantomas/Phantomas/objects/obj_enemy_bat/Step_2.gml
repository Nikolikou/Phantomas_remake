/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4FB9A30C
/// @DnDArgument : "var" "hspeed"
/// @DnDArgument : "op" "4"
if(hspeed >= 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 76878FF6
	/// @DnDParent : 4FB9A30C
	/// @DnDArgument : "value" "2"
	/// @DnDArgument : "instvar" "15"
	image_xscale = 2;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 30F2631C
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 28F649AF
	/// @DnDParent : 30F2631C
	/// @DnDArgument : "value" "-2"
	/// @DnDArgument : "instvar" "15"
	image_xscale = -2;
}