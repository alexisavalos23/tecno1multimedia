class Jugador {

  // variables
  PImage J;
  float posX, posY, tam;
  String estado;

  // resize de pantalla - - -
  float valX( float valor ) {
    return round( map( valor, 0, 800, 0, width ) );
  }
  float valY(float valor) {
    return round( map( valor, 0, 600, 0, height ) );
  }

  // constructor
  Jugador( float pX, float pY, float t ) {
    // inicializar posición
    posX = pX;
    posY = pY;
    tam = t;
    J = loadImage( "jugador2.png" );
  }

  // metodos

  void dibuJug() {

    image( J, posX, posY, 59, tam );
  }

  // metodos para KeyPressed()
  void moverIzqDer() {
    //evito que pase borde izquierdo
    if ( posX > valX(0) ) {  
      if ( key == 'a' )
        posX -= 45;
    }
    //evito que pase borde derecho
    if ( posX < valX(740) ) {  
      if ( key == 'd' )
        posX += 45;
    }
  }
  void moverArrb() {

    if ( key == 'w' )
      posY -= 45;
  }

  void moverAbaj() {

    if ( posY < valY(450) )
      if ( key == 's' )
        posY += 45;
  }

  //colisiones
  boolean perderB( loboDiurno[] blo ) {
    boolean hayColision = false;
    for ( int i = 0; i < blo.length; i++ ) {
      float d = dist( posX, posY, blo[i].posX, blo[i].posY );

      if ( d < ( tam/3.2 + blo[i].tam/3.1 ) ) { // if( d < ( tam/2.3 + blo[i].tam/2.3 ) )
        blo[i].reciclar(); 
        hayColision = true;
      }
    }
    return hayColision;
  }

  boolean perderC( Lobo[] car ) {
    boolean hayColision = false;
    for ( int j = 0; j < car.length; j++ ) {
      float d = dist( posX, posY, car[j].posX, car[j].posY );

      if ( d < ( tam/3.3 + car[j].tam/3.2 ) ) { // if( d < ( tam/3 + car[j].tam/3 ) )
        car[j].reciclar();
        hayColision = true;
      }
    }
    return hayColision;
  }

  void resetearPj() {
    posX = valX(width/2.2); //450;
    posY = valY(height/1.3); //480;
  }
} // - - - CIERRE DE LA CLASE
