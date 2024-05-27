/// @description Insert description here
// You can write your code in this editor
gpu_set_zwriteenable(true);
gpu_set_ztestenable(true);
gpu_set_zfunc(cmpfunc_lessequal);
gpu_set_tex_filter(false);

disp_w	= display_get_width();
disp_h	= display_get_height();
target	= noone;
pitch	= 0;
yaw		= 0;
z		= 0;
