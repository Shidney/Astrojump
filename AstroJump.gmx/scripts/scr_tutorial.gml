draw_set_halign(fa_center);
draw_set_font(fnt_text);

switch(global.tutorial)
{
    case 0:
         post="Usa las flechas de direccion para moverte ↑↓→←";
    break;
    case 1:
    break;
    case 2:
    break;
    case 3:
    break;
}
draw_text(x,y-64,post);
