/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 293D2DB8
/// @DnDArgument : "soundid" "snd_PowerUp"
/// @DnDSaveInfo : "soundid" "2dcc687b-c92c-47f7-9ae5-688f274ea87f"
audio_play_sound(snd_PowerUp, 0, 0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 01FF2236
instance_destroy();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 095FDF5E
/// @DnDArgument : "var" "image_index"
if(image_index == 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 7AE62954
	/// @DnDApplyTo : other
	/// @DnDParent : 095FDF5E
	/// @DnDArgument : "value" "1.5"
	/// @DnDArgument : "instvar" "15"
	with(other) {
	image_xscale = 1.5;
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5FC855BF
	/// @DnDApplyTo : other
	/// @DnDParent : 095FDF5E
	/// @DnDArgument : "steps" "10 * room_speed"
	with(other) {
	alarm_set(0, 10 * room_speed);
	
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5ADE70FA
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 27EEEBD9
	/// @DnDApplyTo : 0e227c96-ee45-4228-b4f7-577e8b869a4a
	/// @DnDParent : 5ADE70FA
	/// @DnDArgument : "speed" "spd"
	with(obj_ball) speed = spd;
}