for(i=1;i<=16;i++)
{
    if(global.slot[i,0]==0)
    {
        return i;
    }
}
return 0;
