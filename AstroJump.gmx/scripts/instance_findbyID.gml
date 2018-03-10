///instance_findbyID(obj,NameID)
var NameID;
NameID=argument[1];
obj=argument[0];
nearest = noone;

//TODO: el Find no va
for (ii=0; ii<instance_number(obj); ii+=1) {    
    if(instance_find(obj,ii).NameID==NameID)
    {
        return nearest;
    }
    else
    {
        return noone;
    }
}
