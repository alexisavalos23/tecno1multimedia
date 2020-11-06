
class Bloque {

  // PROPIEDADES > variables para posición, velocidad y tamanio
  float posX, posY, tam, vel;
  PImage bloque;

  // CONSTRUCTOR > el "setup de la clase"
  Bloque( float pY ){
  // inicializar las propiedades/variables
  posX = random( 200, 700 );
  posY = pY;
  tam = 70;
  vel = random( 20, 30 );

  bloque = loadImage( "bloquenegro.png" );// --carga de las imagenes
  // --modificar el tamaño de las imágenes
  }


  // METODOS > funciones
  void actualizar(){
  posY = posY + vel;// -- mueve al bloque(s) y llama a reciclar()
  if( posY > height ){ //tam/2
    reciclar();
   }
  }

  void dibujar(){
  image( bloque, posX, posY, tam, tam );// --dibuja la imagen en la posicion x/y de la clase
  }

  void reciclar(){
  posX = random( 200, 700 );// recicla todas las propiedades (valor inicial o random)
  posY = -50;
  tam = 70;
  vel = random( 20, 30 );
  }

void resetearBlock(){
   posX = random( 200, 700 );
   posY = -50;
   tam = 70;
   vel = random( 20, 30 );
  }
}
