global.HP--;
scr_audioController("step",noone);
with (instance_place(x,y,obj_player))
{           
            vsp = -3;
            hsp = sign(x - other.x) * 10;
            image_xscale = sign(hsp);
            scr_collideandmove();
}


if(global.HP<1)
{
    global.HP=obj_player.MaxHP;
    if(global.checkpointR !=0)
    {
        room_goto(global.checkpointR);
        obj_player.x=global.checkpointx;
        obj_player.y=global.checkpointy;
        global.checcheckpointR=0;
    }
    else
    {   
        game_end(); 
    }
}

