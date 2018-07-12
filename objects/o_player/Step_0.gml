image_speed = 0;
var imgSpeed = .6;

// Movement and Collision
var movement = 4;
if keyboard_check(vk_right) && !place_meeting(x+movement,y,o_solid) {
	x += movement;	
	sprite_index = s_player_run_right;
	image_speed = imgSpeed;
} else if keyboard_check(vk_left) && !place_meeting(x-movement,y,o_solid) {
	x -= movement;
	sprite_index = s_player_run_right;
	image_speed = imgSpeed;
} else if keyboard_check(vk_up) && !place_meeting(x,y-movement,o_solid) {
	y -= movement;
	sprite_index = s_player_run_up;
	image_speed = imgSpeed;
} else if keyboard_check(vk_down) && !place_meeting(x,y+movement,o_solid) {
	y += movement;
	sprite_index = s_player_run_down;
	image_speed = imgSpeed;
}