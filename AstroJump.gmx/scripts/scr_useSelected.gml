if(global.equiped!=0)
{
using=true;
selected= global.slot[global.equiped,1];

/*
  0- Welder (soldador)
  1- Boots (Botas de salto)
  2- Bombs (Bombas)

*/
switch(selected)
{
     case 0: 
     near_machine=instance_nearest(x,y,obj_basic_machine)
     if(place_meeting(x,y,near_machine))
     {
        if(obj_player.wiring==noone)
        {   
        if(near_machine.Type==WireType.input)  
            {      
            obj_player.wiring=near_machine.id;  
            scr_audioController("electric",noone);     
            }
        }
        else
        {
            if(obj_player.wiring.id!=near_machine.id)
            {
             if(near_machine.Type==WireType.output) 
             { 
                near_machine.connectedTo=obj_player.wiring.id;
                obj_player.wiring.connectedTo=near_machine.id;
                obj_player.wiring=noone;
                scr_audioController("stop",noone);          
                }
            }                      
        }        
     }
     else
     {        
        obj_player.wiring=noone; 
        scr_audioController("stop",noone);        
     }
     break;
     case 1:     
     break;
     case 2:      
     break;
     case 3:
     break;
     case 4:
     break;
     case 5:
     break;
     case 6:
     break;        
}
}
