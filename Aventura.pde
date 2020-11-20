class Aventura {
  // VARIABLES - - -
  // pantalla - - -
  int cantPantallas = 13;
  int cantImagen = 13;
  PImage [] imagenes = new PImage [cantImagen];
  PFont fuente;
  int rect = 2;
  int posx, posy;
  int pantalla = 0;

  Juego game;

  // texto - - -
  String [] texto = new String [15];
  String [] textoBoton = new String [17];

  // boton - - -
  int [][][] botones = new int[cantPantallas][3][6];

  // resize de pantalla - - -
  int valX( int valor ) {
    return round( map( valor, 0, 800, 0, width ) );
  }
  int valY(int valor) {
    return round( map( valor, 0, 600, 0, height ) );
  }


  // CONSTRUCTOR - - -
  Aventura() {
    fuente = createFont( "lilitaone-regular.ttf", 200 );
    game = new Juego();

    // carga de imagenes/fondo - - -
    for ( int i = 0; i < imagenes.length; i ++ ) {
      imagenes[i] = loadImage( "pantalla" + i + ".bmp" );
    }
  }

  // MÉTODOS - - -
  void actualizar() {
    image( imagenes[pantalla], 0, 0, width, height);
    adventure.botonVisual();
    adventure.textosparaboton();
    for ( int i=0; i < 35; i++ ) {
      adventure.textos( i, i );
    }
  } // - - - CIERRE actualizar()


  // PRUEBA DE SONIDO POR PANTALLA
  void soundGame() {
    if ( ( pantalla == 0 ) || ( pantalla == 1 ) || ( pantalla == 2 ) || ( pantalla == 3 ) || ( pantalla == 5 ) ||( pantalla == 6 ) || 
      ( pantalla == 7 ) ||( pantalla == 8 ) || ( pantalla == 9 ) || ( pantalla == 10 ) || ( pantalla == 11 ) ) {
      muFondo.play();
    } else {
      muFondo.pause();
      muFondo.rewind();
    }
    if ( ( pantalla == 4 ) || ( pantalla == 12 ) ) {
      s2.play();
    } else {
      s2.pause();
      s2.rewind();
    }
  } // - - - CIERRE soundGame()

  void dibujar() {
    if ( pantalla == 4 ) {
      game.actualizar(this);
    }
  } // - - - CIERRE dibujar()

  void teclas() {
    game.movimientoPj();
  }

  // métodos para textos - - -
  void textoCar() {
    texto [0] ="ZZZ\n\n-¡AYUDA!";
    texto [1] ="-Voy a salir a ver que pasó...";
    texto [2] ="-¿Hacia donde debo ir?";
    texto [3] ="-Ayuda por favor, estoy perdido\n\n-Tranquilo, te voy a acompañar a tu casa";
    texto [4] ="";
    texto [5] ="-¡Ayuda!, estoy perdido y escuché que un niño \n necesitaba ayuda en el bosque";
    texto [6] ="...Luego de explicar lo que sucedió, el hombre que vivÍa en la casa te llevó \n a la comisaría,\n y el policía fue en la búsqueda del niño";
    texto [7] ="";
    texto [8] ="Luego de llamar a la policía, los buscan a ambos, llevan al niño a su casa\n y a vos te agradecen por haber ido a buscarlo ";
    texto [9] ="";
    texto [10] = "...luego de encontrar al niño\nllamas a la policia para que venga a buscarlo\ny lo ayude";
    texto [11] = "...Luego de explicar lo que sucedió, el hombre que vivÍa el la casa te llevó \n a la comisaría,\n y el policía fue en la búsqueda del niño";
    texto [12] = "UNLP\n Facultad de Artes\n TECNO1  2020 - COMISIÓN 2\n PROF.: Matías Lauregui Jorda\n\n REALIZADO Y EDITADO POR:\n Federico Martínez y Alexis Avalos\n\n MÚSICA COMPUESTA POR:\n Toby Fox";
    texto [13] = "";
  } // - - - CIERRE de textoCar()

  void textos( int pantAVer, int txtAVer ) { 
    if (pantAVer == pantalla ) {
      textSize( width/40 );
      fill( 0 );
      textFont(fuente, width/40);
      text( texto[txtAVer], valX( 400 ), valY( 300 ) );
    }
  } // - - - CIERRE de textos()


  void inicializarTextosboton() {
    textoBoton [0] ="LEVANTARSE";
    textoBoton [1] ="CRÉDITOS";
    textoBoton [2] ="SALIR";
    textoBoton [3] ="CAMINO 1";
    textoBoton [4] ="CAMINO 2";
    textoBoton [5] ="SEGUIR";
    textoBoton [8] ="CONTINUAR";
    textoBoton [9] ="CAMINO 1";
    textoBoton [10] ="CAMINO 2";
    textoBoton [11] ="INICIO";
    textoBoton [12] ="INICIO";
    textoBoton [13] ="SEGUIR";
    textoBoton [14] ="INICIO";
    textoBoton [15] = "Inicio";
  } // - - - CIERRE de inicializarTextosboton()

  void textosparaboton() {
    textSize( width/30 );
    fill( 148, 0, 211 );


    if ( pantalla == 0 ) {
      text( textoBoton[0], valX( 200 ), valY( 550 ) ); 
      text( textoBoton[1], valX( 650 ), valY( 550 ) );
    } else if (pantalla == 1) {
      text( textoBoton [2], valX( 650 ), valY( 550 ) );
    } else if ( pantalla == 2 ) {
      text( textoBoton[3], valX( 300 ), valY( 50 ) );
      text( textoBoton[4], valX( 150 ), valY( 550 ) );
    } else if ( pantalla == 3 ) {
      text( textoBoton[5], valX( 641 ), valY( 533 ) );
    } else if ( pantalla == 5 ) {
      text( textoBoton[5], valX( 140 ), valY( 261 ) );
    } else if (pantalla == 6) {
      text( textoBoton[11], valX( 91 ), valY( 361 ) );
    } else if ( pantalla == 7 ) {
      text( textoBoton[9], valX( 300 ), valY( 41 ) );
      text(textoBoton[10], valX( 165 ), valY( 542 ) );
    } else if ( pantalla == 8 ) {
      text( textoBoton[11], valX( 91 ), valY( 361 ) );
    } else if ( pantalla == 10 ) {
      text( textoBoton[12], valX( 634 ), valY( 537 ) );
    } else if ( pantalla == 11 ) {
      text( textoBoton[14], valX( 88 ), valY( 352 ) );
    } else if ( pantalla == 12 ) {
      text( textoBoton[15], valX( 667 ), valY( 82 ) );
    }
  } // - - - CIERRE textosparaboton()


  // otra forma de encarar los void Pantalla0BotonIzq(), etc
  void pantallasAll( int x1, int y1, int x2, int y2 ) {
    fill( 191, 214, 242 );
    stroke( 0, 30 );
    strokeWeight( 5 );
    rect( valX( x1 ), valY( y1 ), valX( x2 ), valY( y2 ) );
  } // - - - CIERRE de pantallasAll()


  void botonVisual() {
    if (pantalla == 0 ) {
      pantallasAll( 88, 512, 265, 50 ); // pantalla 0 boton izq
      pantallasAll( 536, 512, 210, 45 ); // pantalla 0 boton der
    } else if (pantalla == 1 || pantalla == 3 || pantalla == 10 ) {
      pantallasAll( 536, 512, 210, 45 ); // pantalla 0 boton der
    } else if (pantalla == 2 || pantalla == 7 ) {
      pantallasAll( 86, 519, 145, 40 ); // pantalla 2 boton izq
      pantallasAll( 235, 22, 140, 40 ); // pantalla 2 boton der
    } else if (pantalla == 5) {
      pantallasAll( 28, 234, 230, 45); // pantalla 4 boton izq
    } else if (pantalla == 6 || pantalla == 8 || pantalla == 11 ) {
      pantallasAll( 36, 333, 115, 45 ); // pantalla 6
    } else if (pantalla == 12) {
      pantallasAll( 607, 53, 125, 50 ); // pantalla 12
    }
  } // - - - CIERRE botonVisual()


  void cargaBotones() {
    //cordenadas de cada boton
    int [] botones1 = {1, 88, 353, 512, 562}; 
    int [] botones2 = {12, 536, 746, 512, 557};
    int [] botones3 = {2, 536, 746, 512, 557};  
    int [] botones4 = {3, 86, 231, 519, 559};  
    int [] botones5 = {4, 235, 375, 22, 62};
    int [] botones6 = {5, 536, 746, 512, 557};
    int [] botones7 = {6, 28, 258, 234, 279};
    int [] botones8 = {7, 563, 768, 229, 274};
    int [] botones9 = {8, 28, 258, 234, 279};
    int [] botones10 = {0, 36, 151, 333, 378};
    int [] botones11 = {10, 86, 231, 519, 559};
    int [] botones12 = {11, 235, 375, 22, 62};
    int [] botones13 = {0, 36, 151, 333, 378};
    int [] botones14 = {10, 174, 111, 140, 45};
    int [] botones15 = {11, 536, 746, 512, 557};
    int [] botones16 = {0, 36, 151, 333, 378};
    int [] botones17 = {0, 607, 732, 53, 103};

    botones[0][0] = botones1;
    botones[0][1] = botones2;
    botones[1][0] = botones3;
    botones[2][0] = botones4;
    botones[2][1] = botones5;
    botones[3][0] = botones6;
    botones[4][0] = botones7;
    botones[4][1] = botones8;
    botones[5][0] = botones9;
    botones[6][0] = botones10;
    botones[7][0] = botones11;
    botones[7][1] = botones12;
    botones[8][0] = botones13;
    botones[9][0] = botones14;
    botones[10][0] = botones15;
    botones[11][0] = botones16;
    botones[12][0] = botones17;
  } // - - - CIERRE cargaBotones()


  void botones() {  //funcion para todos los botones 
    if ( mouseX > valX( botones[pantalla][0][1] ) && mouseX < valX(botones[pantalla][0][2]) && mouseY > valY(botones[pantalla][0][3] ) && mouseY < valY(botones[pantalla][0][4] ) ) {
      pantalla = botones[pantalla][0][0];
    } else if ( botones[pantalla][1].length > 0 ) { // Verifico si el segundo botón posee datos, indicando que existe
      if ( mouseX > valX( botones[pantalla][1][1] ) && mouseX < valX(botones[pantalla][1][2]) && mouseY > valY(botones[pantalla][1][3] ) && mouseY < valY(botones[pantalla][1][4] ) ) {
        pantalla = botones[pantalla][1][0];
      }
      game.reset();
    }
  } // - - - CIERRE botones()


  //metodo para cambiar el valor de la variable 
  void cambiarPant( int nuevaPant ) {
    pantalla = nuevaPant;
  } // - - - CIERRE de cambiarPant()
} // - - - CIERRE DE LA CLASE
