///instance_findbyID(obj,NameID)
var NameID;
NameID=argument[1];
obj=argument[0];
nearest = noone;

for (ii=0; ii<instance_number(obj); ii+=1) {    
    if(nearest=instance_find(obj,ii).id==NameID)
    {
        return nearest;
    }
    else
    {
        return noone;
    }
}
