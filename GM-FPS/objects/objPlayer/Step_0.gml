/// @description Insert description here
// You can write your code in this editor
var _inst;
	_inst = instance_find(objCamera, 0);
if (_inst != noone)
{
	if (keyboard_check(ord("W")))
		motion_add(_inst.yaw, 0.015);
}

if (speed > 0.15)
	speed = 0.15;
