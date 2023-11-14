//world
enum tile {
	NONE,
	WALL,
	PLATFORM,
	WATER
}

//physics
enum isOn {
	GROUND,
	AIR,
	WATER
}

//input on/off
enum state {
	NORMAL,
	HITTED,
	DEAD
}

//state machine
enum action {
	IDLE,
	RUN,
	JUMP,
	GRAB_LEDGE,
	SWIM,
	ATTACK,
	NONE		//hitted - no control
}

enum status {	//
	NORMAL,
	POISON,
	FREEZED,
	BURNED
}

//::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
// CONSTRUCTORS
//GAME ENGINE CONSTRUCTORS
function GameCamera() constructor {
	id = -1;
	x = 0;
	y = 0;
	w = 480;
	h = 270;
	resolution = 2;
	
	static Activate = function(){
		view_enabled = true;
		view_visible[0] = true;
		view_wport[0] = w;
		view_hport[0] = h;
		view_camera[0] = camera_create_view(0,0,view_wport[0], view_hport[0]);
		id = view_camera[0];
		view_set_xport(0,0);
		view_set_yport(0,0);
	}
	
	static SetMaxRes = function() {
		var _dw = display_get_width();
		var _dh = display_get_height();
		resolution = min(_dw / w,_dh / h);
	}
	
	static Resize = function(){
		var _dw = display_get_width();
		var _dh = display_get_height();
		var _rW = w * resolution;
		var _rH = h * resolution;
		var _xpos = _dw / 2 - _rW / 2;
		var _ypos = _dh / 2 - _rH / 2;
		window_set_rectangle(_xpos, _ypos, _rW,_rH);
		surface_resize(application_surface, _rW,_rH);
		display_set_gui_size(w,h);
	}
	
	static SetPosition = function(_x = x,_y = y,_clamp = false,_clampW = 0,_clampH = 0){
		x = _x;
		y = _y;
		if (_clamp) {
			x = clamp(x,0,_clampW - w);
			y = clamp(y,0,_clampH - h);
		}
		camera_set_view_pos(id,x,y);
	}
}
	
function GameRoom() constructor {
	w = 160;
	h = 160;
	id = 0;
	
	static Resize = function(_w = w,_h = h) {
		w = _w;
		h = _h;
		room_width = _w;
		room_height = _h;
	}
}