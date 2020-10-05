// variable para el for
int cant = 2;

// creo y declaro el array
Tecno[] tec = new Tecno[cant];

void setup(){
  size( 800, 600 );
  
  for( int i = 0; i < cant; i++ ){
// llamada al constructor    
  tec[i] = new Tecno( random( width ), random( height ), 48 );
  }
}

void draw(){
  background( #E3D7E5 );
  
  for( int i = 0; i < cant; i++){
  
  tec[i].dibujar();
  tec[i].mover();
  tec[i].rebotes();
  } 
}
