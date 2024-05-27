/// @description Insert description here
// You can write your code in this editor
var _inst;
	_inst = instance_find(objPlayer, 0);
if (_inst != noone)
	target = _inst;
else
	target = self;

var _xf, _yf, _zf;
var _xt, _yt, _zt;
	_xf = target.x;
	_yf = target.y;
	_zf = target.z + 2;
	
	_xt = _xf + cos(degtorad(yaw));
	_yt = _yf - sin(degtorad(yaw));
	_zt = _zf - tan(degtorad(pitch));

var _view_matrix, _proj_matrix;
	_view_matrix = matrix_build_lookat(_xf, _yf, _zf, _xt, _yt, _zt, 0, 0, 1);
	_proj_matrix = matrix_build_projection_perspective_fov(-45.0, disp_w / disp_h, 0.3, 1000.0);
camera_set_view_mat(view_camera[0], _view_matrix);
camera_set_proj_mat(view_camera[0], _proj_matrix);
