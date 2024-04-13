function scr_initialize(){
	randomize();
	scr_enum();
	scr_init_setting();
	global.gamestate = game_states.init;
	
	scr_loadgame();
	global.target_x=global.checkpoint_x;
	global.target_y=global.checkpoint_y;
	global.fade_object = noone;
	
	global.expecting_textblock_x=-999;
	global.expecting_textblock_y=-999;
	#region debug
	global.debug = true;
	
	
	#endregion
	instance_create_depth(0,0,0,obj_GAME);
	scr_fadeout(rm_title, global.target_x, global.target_y, obj_fade);
}