scr_getinputs();
if(place_meeting(x,y,obj_ladder) && ((key_up)||(key_down)))
{
    hsp=0;
    vsp=0;
    state = states.ladder;   
}
move = -key_left + key_right;
hsp = move * movespeed;

if(vsp <10) vsp+=grav;

//Salto
if(place_meeting(x,y+1,obj_wall))
{
    if(key_jump==1) 
    {
     repeat(choose(2,3)) instance_create(x,bbox_bottom,obj_dust);
     scr_audioController("step",noone);
     vsp = - jumpspeed;  
     jumping=true; 
    }
}
if (sign(hsp_final) != 0) image_xscale = sign(hsp_final);
        if (abs(hsp_final) > 0) 
        {
            sprite_index = spr_hw; 
            stepcount++;
        }
        else 
        {
            sprite_index = spr_h;
            stepcount = 0;
        }
        if(jumping)
        {
        if (vsp_final < 0) sprite_index = spr_hj; else sprite_index = spr_hf;
        stepcount = 0;
        }
        if (stepcount > 12)
        {
            stepcount = 0;
            if (steppitch == 0.8) steppitch = 0.6 else steppitch = 0.8;
            //audio_sound_pitch(snd_step,steppitch)
            //audio_play_sound(snd_step,0,0);        
            repeat(choose(3,4)) instance_create(x,bbox_bottom,obj_dust);
        }
scr_collideandmove();
