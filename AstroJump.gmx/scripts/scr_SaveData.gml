ini_open( 'savedata.ini' );
ini_write_string( 'Player', 'X', string(global.checkpointx ));
ini_write_string( 'Player', 'Y', string(global.checkpointy ));
ini_write_string( 'Player', 'Room', string(global.checkpointR ));
ini_write_string( 'Player', 'Checkpoint', string(global.checkpoint ));
for(i=1;i<=16;i++)
{
   ini_write_string( 'Inventario', 'Slot'+string(i), string(global.slot[i,0] )); 
   ini_write_string( 'Inventario', 'Item'+string(i), string(global.slot[i,1] )); 
}

ini_write_string( 'Inventario', 'Equiped', string(global.equiped )); 

ini_write_string( 'Inventario', 'Boots', string(global.boots )); 
ini_write_string( 'Inventario', 'Boots_Slot',string( global.boots_slot )); 

ini_write_string( 'Inventario', 'Welder',string( global.welder )); 
ini_write_string( 'Inventario', 'Welder_Slot',string( global.welder_slot )); 

ini_write_string( 'Inventario', 'Bombs',string( global.bombs )); 
ini_write_string( 'Inventario', 'Bombs_Slot',string( global.bombs_slot )); 

ini_write_string( 'Player', 'Max_HP',string( global.MaxHP )); 
ini_write_string( 'Player', 'HP',string( global.HP ));
ini_write_string( 'Player', 'Dinero',string( global.coins ));

ini_write_string( 'World', 'Max_Temperatura',string( global.MaxTemperature ));
ini_write_string( 'World', 'Temperatura',string( global.Temperature ));

ini_write_string( 'World', 'Tiempo',string( global.alpha ));

ini_close();

/*


*/
