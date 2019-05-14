/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 423D07C0
/// @DnDArgument : "x" "8"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "global.player_score"
draw_text(8, 8, string("Score: ") + string(global.player_score));

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 4222368C
/// @DnDArgument : "halign" "fa_right"
draw_set_halign(fa_right);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3939EC99
/// @DnDArgument : "x" "room_width - 8"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "caption" ""High Score: ""
/// @DnDArgument : "var" "global.high_score"
draw_text(room_width - 8, 8, string("High Score: ") + string(global.high_score));

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 3416C5BA
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 38C5C8FC
/// @DnDArgument : "x" "(room_width / 2)  - ((global.player_lives  - 1)*32)"
/// @DnDArgument : "y" "room_height - 32"
/// @DnDArgument : "sprite" "spr_lives"
/// @DnDArgument : "number" "global.player_lives"
/// @DnDSaveInfo : "sprite" "1a12bef4-ac26-48b0-ae9f-2f4821c2301d"
var l38C5C8FC_0 = sprite_get_width(spr_lives);
var l38C5C8FC_1 = 0;
for(var l38C5C8FC_2 = global.player_lives; l38C5C8FC_2 > 0; --l38C5C8FC_2) {
	draw_sprite(spr_lives, 0, (room_width / 2)  - ((global.player_lives  - 1)*32) + l38C5C8FC_1, room_height - 32);
	l38C5C8FC_1 += l38C5C8FC_0;
}