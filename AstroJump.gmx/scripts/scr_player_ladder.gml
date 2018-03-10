scr_getinputs();
if (key_jump) || (!instance_place(x,y,obj_ladder))
{
    state=states.normal;
}
if(instance_exists(obj_ladder) && instance_place(x,y,obj_ladder))
{
    if(key_down < key_up)
    {
        sprite_index=spr_hj;
    }
    else
    {
         sprite_index=spr_hf;
    }
    x= (instance_nearest(x,y,obj_ladder).x);
    hsp=0;
    vsp= 2 * (key_down - key_up);
    scr_collideandmove();
}
