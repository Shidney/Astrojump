scr_enemy_normal();
if(eatType==eat.herb)
{
 near_tree=instance_nearest(x,y,obj_tree);    
 near_fruit=instance_nearest(x,y,obj_fruit);
     
 if(near_fruit!=noone)
 {
    if(distance_to_object(near_fruit)<=vision_close)
    {
         dir=sign(near_fruit.x-x);         
         if(instance_place(x,y,near_tree))
         {                 
              if(near_fruit!=noone)
              {               
                  src_pickfruit(near_tree,near_fruit);      
                  dir=sign(near_fruit.x-x); 
              }
         }
    }
 }else
 {
            e_state=e_states.idle;
            canEat=false; 
        }
}
else if(eatType==eat.carn)
{
    near_meat=instance_nearest_notme(x,y,obj_enemy);        
    if(near_meat!=noone)
    {
        if(distance_to_object(near_meat)<=vision_close)
        {
           dir=sign(near_meat.x-x);  
           with(instance_place(x,y,near_meat))
           {
                if (hit == 0)
                {
                    hit = 1;
                    hsp = sign(x - other.x) * 12;  
                    canEat=true;                   
                    fear_target=other;
                    e_state=e_states.fear; 
                                                                         
                }    
                if(other.hit==0)
                {
                    other.hit = 1;
                    other.hp+=0.1;
                    other.hsp = sign(x - other.x) * 3;
                    other.near_meat=noone;
                    other.canEat=false;
                    other.e_state=e_states.idle;                     
                }             
           }           
        }        
    }
    else
        {
            e_state=e_states.idle;
            canEat=false; 
        }
}
