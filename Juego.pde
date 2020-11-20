class Juego {
  // variables
  PImage fondo, trofeo;
  int b = 3;
  int c = 2;

  // resize de pantalla - - -
  float valX( float valor ) {
    return round( map( valor, 0, 800, 0, width ) );
  }
  float valY(float valor) {
    return round( map( valor, 0, 600, 0, height ) );
  }

  Jugador personaje; // jugador;

  loboDiurno[] LoboDiurno = new loboDiurno[b]; // arreglo del / los lobo(s) diurnos
  Lobo[] lobo = new Lobo[c];// arreglo del / los lobo(s)

  // constructor
  Juego() {

    //cargo img fondo y fuente
    fondo = loadImage( "pantalla4.bmp" );

    // inicializar los objetos: personaje, lobo(s), lobos diurnos(s)
    personaje = new Jugador( valX(width/2.2), valY(height/1.3), width/6 ); //tam: 150

    for ( int i = 0; i < b; i++ ) {
      LoboDiurno[i] = new loboDiurno( -50 );
    }
    for ( int j= 0; j < c; j++ ) {
      lobo[j] = new Lobo( -50 );
    }
  }

  // metodos

  void actualizar( Aventura a ) {

    personaje.dibuJug();
    for ( int i = 0; i < b; i++ ) {
      LoboDiurno[i].dibujar();
    }
    for ( int j = 0; j < c; j++ ) {
      lobo[j].dibujar();
    }
    for ( int i = 0; i < b; i++ ) {
      LoboDiurno[i].actualizar();
    }
    for ( int j = 0; j < c; j++ ) {
      lobo[j].actualizar();
    }

    if (personaje.posY<=0) {
      a.cambiarPant( 7 );
    }

    if ( personaje.perderB( LoboDiurno ) ) {
      a.cambiarPant( 6 );
    }
    if ( personaje.perderC( lobo ) ) {
      a.cambiarPant( 6 );
    }
  } // - - - CIERRE actualizar()

  void reset() {
    for ( int i = 0; i < b; i++ ) {
      LoboDiurno[i].resetearDiurno();
    }
    for ( int j = 0; j < c; j++ ) {
      lobo[j].resetearLobo();
    }
    personaje.resetearPj();
  } // - - - CIERRE reset()

  void movimientoPj() {
    personaje.moverIzqDer();
    personaje.moverArrb();
    personaje.moverAbaj();
  } // - - - CIERRE teclas()
} // - - - CIERRE DE LA CLASE
