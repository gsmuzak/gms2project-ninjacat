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