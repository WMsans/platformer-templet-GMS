/// @description 
key_left = keyboard_check(global.keyleft);
key_right = keyboard_check(global.keyright);


var dir = key_right - key_left;

hsp += dir*accel;
if(dir == 0){
	if(hsp < 0){
		hsp = min(hsp + decel, 0);
	}else{
		hsp = max(hsp - decel, 0);
	}
}
hsp = clamp(hsp, -max_sp, max_sp);
x+= hsp;