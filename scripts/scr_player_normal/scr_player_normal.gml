function scr_player_normal(){
	

//veritcal movement & jump

vsp += grav;
if(jump_buffer > 0){
	jump_buffer -- ;
	if(key_jump_pressed_timer){
		jump_buffer = 0;
		vsp = jump_speed;
	}
}
if(vsp < 0 && !key_jump){
	vsp = max(vsp, -1);
}
//horizontal movement

var dirh = key_right - key_left;

hsp += dirh*accel;
if(dirh == 0){
	if(hsp < 0){
		hsp = min(hsp + decel, 0);
	}else{
		hsp = max(hsp - decel, 0);
	}
}

if(scr_touch_block(x + hsp, y)){
	var one = sign(hsp);
	while(!scr_touch_block(x + one, y)){
		x+= one;
	}
	hsp = 0;
}
hsp = clamp(hsp, -max_sp, max_sp);
x+= hsp;

if(scr_touch_block(x, y + vsp)){
	var one = sign(vsp);
	while(!scr_touch_block(x , y + one)){
		y+= one;
	}
	vsp = 0;
}
vsp = clamp(vsp, -max_vsp, max_vsp);
y += vsp; 

if(scr_touch_block(x, y+ groundbuffer)){
	jump_buffer = 6;
}
#region animation
sprite_index = spr_player;
if(abs(hsp) >= 1) image_xscale = sign(hsp);
if(abs(hsp) < 1 && abs(vsp) < 1 && anim_speed_timer % anim_speed_buff == 0){
	sprite_index = spr_player_idle;
	anim_speed_timer = 0;
}else{
	sprite_index = spr_player;
	anim_speed_timer++;
}

#endregion
}