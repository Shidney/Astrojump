image_xscale=dir;
if(image_index<image_number-1)
{
    image_index++;
}
else
{
 image_index=0;
}

hsp= dir * movespeed;
vsp+=grav;
//Horizontal Collision
if(place_meeting(x+hsp,y,obj_wall))
{
    while(!place_meeting(x+sign(hsp),y,obj_wall))
    {
        x+=sign(hsp);
    }
    hsp=0;
    dir*=-1; 
}
x+=hsp;

//Vertical Collision
if(place_meeting(x,y+vsp,obj_wall))
{
    while(!place_meeting(x,y+sign(vsp),obj_wall))
    {
        y+=sign(vsp);
    }
    vsp=0;
    if(fear) && !position_meeting(x+(sprite_width/2)*dir,y+(sprite_height/2)+16,obj_wall)
    {
        dir*=-1;    
    }
}
y+=vsp;       
