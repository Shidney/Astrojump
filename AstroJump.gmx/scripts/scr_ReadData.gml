ini_open( 'savedata.ini' );
global.checkpointx=real( ini_read_string( 'Player', 'X',0));
global.checkpointy =ini_read_string( 'Player', 'Y', 0);
global.checkpointR=ini_read_string( 'Player', 'Room', noone );
global.checkpoint=ini_read_string( 'Player', 'Checkpoint',noone);
for(i=1;i<=16;i++)
{
   global.slot[i,0]=real(ini_read_string( 'Inventario', 'Slot'+string(i), 0)); 
   global.slot[i,1] =real(ini_read_string( 'Inventario', 'Item'+string(i), -1)); 
}

global.equiped=real(ini_read_string( 'Inventario', 'Equiped', 0 )); 

global.boots=real(ini_read_string( 'Inventario', 'Boots', 0 )); 
global.boots_slot=real(ini_read_string( 'Inventario', 'Boots_Slot', 0)); 

global.welder=real(ini_read_string( 'Inventario', 'Welder', 0)); 
global.welder_slot=real(ini_read_string( 'Inventario', 'Welder_Slot', "")); 

global.bombs=real(ini_read_string( 'Inventario', 'Bombs',0)); 
global.bombs_slot=real(ini_read_string( 'Inventario', 'Bombs_Slot',0)); 

global.MaxHP=real(ini_read_string( 'Player', 'Max_HP', 3)); 
global.HP=real(ini_read_string( 'Player', 'HP', global.MaxHP));
global.coins=real(ini_read_string( 'Player', 'Dinero',0));

global.MaxTemperature=real(ini_read_string( 'World', 'Max_Temperatura',0));
global.Temperature=real(ini_read_string( 'World', 'Temperatura',0));

global.alpha=real(ini_read_string( 'World', 'Tiempo',0));

ini_close();

/*


*/
