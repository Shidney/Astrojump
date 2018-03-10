if(place_meeting(x,y,argument0))
{
if(argument0.fruitcount-1>=0)
{
    with(argument1)
    {
    if(ds_list_find_index(argument0.fruits,argument1)!=-1)
    {
        inTree=false;
        argument0.fruitcount--; 
        ds_list_delete(argument0.fruits,ds_list_find_index(argument0.fruits,argument1));
    }
    }  
    
    }
    
}
