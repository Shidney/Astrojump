depth=-999999;
//Life
draw_set_font(fnt_text);
draw_set_alpha(1);

for(var i=0;i<global.MaxHP;i++)
{    
    draw_sprite_ext(spr_heart,0,view_xview+30+(30*i),30,image_xscale,image_yscale,image_angle,c_black,1);
}
for(var i=0;i<global.HP;i++)
{    
    draw_sprite(spr_heart,0,view_xview+30+(30*i),30);
}

//Temperature
temp=(global.Temperature/global.MaxTemperature)*100;
draw_healthbar(view_xview+22,54,view_xview+26,80, temp, c_black, c_navy, c_red, 3, true, true)
draw_sprite(spr_termic,0,view_xview+24,50);
if(temp>=50)
{
   draw_set_color(c_red); 
}
else
{
    draw_set_color(c_navy); 
}

draw_set_halign(fa_left);
draw_set_alpha(1);
draw_text(view_xview+34,50,string(global.Temperature)+" C°");

//Coins
draw_set_color(c_yellow);
draw_text(view_xview+34,70,string(global.coins)+" §");

//Equip Inventory
draw_sprite(spr_equip,0,view_xview+view_wview-34,40);

if(global.equiped!=0)
{    
    draw_sprite(spr_objetos,global.slot[global.equiped,1],view_xview+view_wview-34,40);
}
if(wiring!=noone)
{
    draw_sprite_ext(spr_equip,0,view_xview+view_wview-34,40,1,1,1,c_lime,1);
     draw_sprite(spr_objetos,global.slot[global.equiped,1],view_xview+view_wview-34,40);
    draw_sprite_ext(wiring.sprite_index,0,view_xview+view_wview-30,46,1,1,0,-1,1);
}

