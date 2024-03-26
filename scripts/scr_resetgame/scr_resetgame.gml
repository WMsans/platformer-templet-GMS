function scr_resetgame(){
	ini_open("setting.sav");
	global.keyup = ini_read_real("control","UP",vk_up);
	global.keyleft = ini_read_real("control","LEFT",vk_left);
	global.keyright = ini_read_real("control","RIGHT",vk_right);
	global.keydown = ini_read_real("control","DOWN",vk_down);
	global.keyz = ini_read_real("control","CONFIRM",ord("Z"));
	global.keyx = ini_read_real("control","CANCLE",ord("X"));
	global.keyc = ini_read_real("control","BACKPACK",ord("C"));
	global.keya = ini_read_real("control","SKILL",ord("A"));
	global.keyesc = ini_read_real("control","ESCAPE",vk_escape);
	global.keyshift = ini_read_real("control","SHIFT",vk_shift);
	global.keyctrl =  ini_read_real("control","CONTROL",vk_control);
	global.keyspace = ini_read_real("control","SPACE",vk_space);
	ini_close();
}