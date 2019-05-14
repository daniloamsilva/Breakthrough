/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 5023344E
/// @DnDArgument : "var" "numOfBricks"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "object" "obj_brick"
/// @DnDSaveInfo : "object" "0911787c-c3f7-460a-8154-cdbe0639d928"
var numOfBricks = instance_number(obj_brick);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 12B3A234
/// @DnDArgument : "var" "numOfBricks"
/// @DnDArgument : "op" "3"
if(numOfBricks <= 0)
{
	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 21040EC7
	/// @DnDParent : 12B3A234
	room_restart();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 01F8A6A0
/// @DnDArgument : "var" "gameover"
/// @DnDArgument : "value" "true"
if(gameover == true)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 18862173
	/// @DnDParent : 01F8A6A0
	/// @DnDArgument : "key" "vk_anykey"
	var l18862173_0;
	l18862173_0 = keyboard_check_pressed(vk_anykey);
	if (l18862173_0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 64AFDAC1
		/// @DnDParent : 18862173
		/// @DnDArgument : "soundid" "snd_PowerUp"
		/// @DnDSaveInfo : "soundid" "2dcc687b-c92c-47f7-9ae5-688f274ea87f"
		audio_play_sound(snd_PowerUp, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 178ED567
		/// @DnDParent : 18862173
		/// @DnDArgument : "var" "player_score"
		global.player_score = 0;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 234E4BB6
		/// @DnDParent : 18862173
		/// @DnDArgument : "value" "3"
		/// @DnDArgument : "var" "player_lives"
		global.player_lives = 3;
	
		/// @DnDAction : YoYo Games.Rooms.Restart_Room
		/// @DnDVersion : 1
		/// @DnDHash : 2BDECEBD
		/// @DnDParent : 18862173
		room_restart();
	}
}