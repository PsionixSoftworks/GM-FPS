/// @description Insert description here
// You can write your code in this editor
world_size_x	= 256;
world_size_y	= 256;
tile_size		= 16;

vertex_format_begin();
	vertex_format_add_position_3d();
	vertex_format_add_texcoord();
	vertex_format_add_color();
v_format = vertex_format_end();
v_buffer = vertex_create_buffer();

vertex_begin(v_buffer, v_format);
for (var j = 0; j < world_size_y; j++)
{
	for (var i = 0; i < world_size_x; i++)
	{
		// Triangle 1:
		vertex_position_3d(v_buffer, i, j, 0);
		vertex_texcoord(v_buffer, 0, 0);
		vertex_color(v_buffer, c_white, 1.0);
		vertex_position_3d(v_buffer, i, j + 1, 0);
		vertex_texcoord(v_buffer, 0, 1);
		vertex_color(v_buffer, c_white, 1.0);
		vertex_position_3d(v_buffer, i + 1, j + 1, 0);
		vertex_texcoord(v_buffer, 1, 1);
		vertex_color(v_buffer, c_white, 1.0);
	
		// Triangle 2:
		vertex_position_3d(v_buffer, i, j, 0);
		vertex_texcoord(v_buffer, 0, 0);
		vertex_color(v_buffer, c_white, 1.0);
		vertex_position_3d(v_buffer, i + 1, j + 1, 0);
		vertex_texcoord(v_buffer, 1, 1);
		vertex_color(v_buffer, c_white, 1.0);
		vertex_position_3d(v_buffer, i + 1, j, 0);
		vertex_texcoord(v_buffer, 1, 0);
		vertex_color(v_buffer, c_white, 1.0);
	}
}
vertex_end(v_buffer);
