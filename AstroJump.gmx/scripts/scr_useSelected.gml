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
     near_input=instance_nearest(x,y,obj_basic_input)
     if(place_meeting(x,y,near_input))
     {
        with(near_input)
        {
            if(!active)
            {             
                active=scr_MachinePuzzle(false);
            }
            else 
            {
                active=false;
            }
         }
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
