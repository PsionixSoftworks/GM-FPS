/// @description Insert description here
// You can write your code in this editor
var _center_x, _center_y;
	_center_x = disp_w / 2;
	_center_y = disp_h / 2;

yaw		+= (display_mouse_get_x() - _center_x) / 32.0;
pitch	+= (display_mouse_get_y() - _center_y) / 24.0;

if (pitch < -90)
	pitch = -90;
if (pitch > 90)
	pitch = 90;

display_mouse_set(_center_x, _center_y);
