var xvel = 8 *
	(keyboard_check(vk_right) - keyboard_check(vk_left));
	
var yvel = 8 *
	(keyboard_check(vk_down) - keyboard_check(vk_up));

gameCamera.SetPosition(gameCamera.x + xvel,gameCamera.y + yvel);

if keyboard_check_pressed(vk_space)
	gameCamera.SetPosition(0,0);