if(cursor_v==0)
{
    global.equiped=cursor_h+1*cursor_v+1;               
}  
else if(cursor_v==1)
{
    global.equiped=cursor_h+1+(cursor_v+1*cursor_v+1)+1;
}    
else if(cursor_v==2)
{
    global.equiped=((cursor_v+1)*(cursor_v+1)+cursor_h);
}     
else if(cursor_v==3)
{
    global.equiped=((cursor_v+1)*(cursor_v))+cursor_h+1; 
}    
if(!scr_isUsedSlot(global.equiped))
{
    global.equiped=0;
}  
obj_player.wiring=false;
