//Velocidad
hsp_final = hsp + hsp_carry;
hsp_carry = 0;

//Horizontal Collision
if(place_meeting(x+hsp_final,y,obj_wall))
{
    while(!place_meeting(x+sign(hsp_final),y,obj_wall))
    {
        x+=sign(hsp_final);
    }
    hsp_final=0;
    hsp=0;
}

x+=hsp_final;

//Velocidad
vsp_final = vsp /*+ vsp_carry*/;
vsp_carry = 0;
//Vertical Collision
if(place_meeting(x,y+vsp_final,obj_wall))
{
    while(!place_meeting(x,y+sign(vsp_final),obj_wall))
    {
        y+=sign(vsp_final);
    }
    vsp_final=0;
    vsp=0;
    jumping=false;    
}
y+=vsp_final;

