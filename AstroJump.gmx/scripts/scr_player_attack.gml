 //====Friction
hsp = Approach(hsp,0,frc);
vsp = Approach(vsp,0,frc);
        
//====Animate
sprite_index = spr_attack;
        
//====Hitbox
if (image_index >= 2) && (image_index <= 3)
{
  with (instance_create(x,y,obj_hitbox))
  {
       image_xscale = other.image_xscale;
       with (instance_place(x,y,obj_enemy))
       {
            scr_audioController("attack",noone);
            if (hit == 0)
            {
                hit = 1;
                vsp = -3;
                hsp = sign(x - other.x) * 6;               
                fear_target=obj_player;
                }
            }           
       }
}
scr_collideandmove();
