/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_escape))
	game_end(0);

if (keyboard_check_pressed(vk_f11))
	fullscreen = !fullscreen;

window_set_fullscreen(fullscreen);
