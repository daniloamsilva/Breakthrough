/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 39D59A4F
/// @DnDArgument : "var" "go"
/// @DnDArgument : "value" "false"
if(go == false)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 7D864120
	/// @DnDParent : 39D59A4F
	/// @DnDArgument : "soundid" "snd_Click"
	/// @DnDSaveInfo : "soundid" "3444e44f-ba3b-4634-af29-5f5310e7613a"
	audio_play_sound(snd_Click, 0, 0);

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
	/// @DnDVersion : 1.1
	/// @DnDHash : 5193531A
	/// @DnDParent : 39D59A4F
	/// @DnDArgument : "direction" "135,90,45"
	direction = choose(135,90,45);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 261AC49E
	/// @DnDParent : 39D59A4F
	/// @DnDArgument : "speed" "spd"
	speed = spd;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 18BF677F
	/// @DnDParent : 39D59A4F
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "go"
	go = true;
}