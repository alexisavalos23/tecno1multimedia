class Lobo {

  // variables para posición, velocidad y tamaño
  float posX, posY, tam, vel;
  PImage lobo;

  // constructor
  Lobo( float pY ) {

    // inicializar las propiedades/variables
    posX = random( 0, 700 );
    posY = pY;
    tam = 100;
    vel = random( 8, 14 );  

    // carga de las imagenes  
    lobo = loadImage( "lobo3.png"  );
  }

  // metodos
  void actualizar() {
    // mueve al loboDiurno(s) y llama a reciclar()
    posY = posY + vel;
    if ( posY > height ) { //tam/2
      reciclar();
    }
  }

  void dibujar() {
    // dibuja la imagen en la posicion x/y de la clase  
    image( lobo, posX, posY, tam, 80 );
  }

  void reciclar() {
    // recicla todas las propiedades (valor inicial o random)
    posX = random( 0, 700 );
    posY = -50;
    tam = 100;
    vel = random( 8, 14 );
  }

  void resetearLobo() {
    posX = random( 0, 700 );
    posY = -50;
    tam = 100;
    vel = random( 8, 14 );
  }
} // - - - CIERRE DE LA CLASE
