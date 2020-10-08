// TP4 - - - AVENTURA GRÁFICA (OPTIMIZADA: FUNCIONES Y ARREGLOS) - - - ALEXIS DIEGO AVALO - - - TECNO1 2020 - - -

import ddf.minim.*;

Minim musica;
AudioPlayer muFondo, muPresnt, mu3, mu4, mu5, mu6, mu7, mu8, mu9;

PFont[] fuente = new PFont[2];
PImage[] img = new PImage[21];

String a = "UNLP";
String b = "Facultad de Artes";
String c = "TECNO1  2020";

String d = "Realizado por";
String e = "Alexis Diego Avalos";

String f = "Música";
String g = "Shoji Meguro";

String h = "Basado en la obra original de";
String i = "Atlus Co., Ltd";

String estado;

void setup() {
  size( 800, 600 );

  // - - - CARGO AUDIO, IMÁGENES Y FUENTE - - - - - - - - - - - - - - - 

  musica = new Minim(this);
  muFondo = musica.loadFile( "soundInicio.mp3" );
  muPresnt = musica.loadFile( "soundPresnt.mp3" );
  mu3 = musica.loadFile( "sound3.mp3" );
  mu4 = musica.loadFile( "sound4.mp3" );
  mu5 = musica.loadFile( "sound5.mp3" );
  mu6 = musica.loadFile( "sound6.mp3" );
  mu7 = musica.loadFile( "sound7.mp3" );
  mu8 = musica.loadFile( "sound8.mp3" );
  mu9 = musica.loadFile( "sound9.mp3" );
  muFondo.setGain( -15 );
  muPresnt.setGain( -15 );
  mu3.setGain( -15 );
  mu4.setGain(-15 );
  mu5.setGain( -15 );
  mu6.setGain( -15 );
  mu7.setGain( -15 );
  mu8.setGain( -15 );
  mu9.setGain( -15 );
  //muFondo.loop();

  estado = "pantalla inicio";

  fuente[0] = createFont( "Catherine.otf", 200);
  fuente[1] = createFont( "PlutoRegular.ttf", 200 );

  img[0] = loadImage( "0.png" );
  img[1] = loadImage( "1.png" );
  for ( int j = 2; j < 21; j++ ) {
    img[j] = loadImage( j + ".jpg" );
  }
}


void draw() {

  // - - - DIBUJO LAS PANTALLAS - - - - - - - - - - - - - - - - - - - 

  // - - - PANTALLA INICIO - - -

  if ( estado.equals( "pantalla inicio" ) ) {
    image( img[2], 0, 0, width, height );

    fill( 0, 180 );
    noStroke();
    ellipse( width/2, height/3, 280, 280);
    image( img[0], 135, -10, 550, 500);

    fill( 245, 17, 112, 110 );
    stroke( 0, 30 );
    strokeWeight(5);
    rect( 125, 470, 550, 85 );
    fill( 255 );
    textFont( fuente[0], 65 );
    text( "Presioná la tecla 'space' ", 163, 540 ); //tecla - - -
  }

  // - - - GUÍA - - -

  if ( estado.equals( "guia" ) ) {
    image( img[2], 0, 0, width, height );
    fill( 0, 100 );
    rect( 0, 0, width, height);
    
    pantGuia( color( 245, 17, 112, 180 ), "Para AVANZAR presiona la tecla 'RIGHT'.", "Estos son botones, hacer CLICK en ellos.");

  }

  // - - - PRESENTACIÓN VINCENT - - -

  if ( estado.equals( "vincent" ) ) {
    image( img[2], 0, 0, width, height );

    fill( 0, 120 );
    noStroke();
    rect( 0, 0, width, height );
    image( img[1], 55, 5, 250, 590 );

    fill( 0, 180 );
    stroke( 255, 180 );
    strokeWeight(4);
    rect( 300, 40, 600, 70);

    fill( 0, 180 );
    stroke( 214, 35, 100, 180 );
    strokeWeight( 5 );
    rect( 320, 150, 451, 240 );

    fill( 245, 17, 112 );
    stroke( 0, 30 );
    strokeWeight( 5 );
    rect( 275, 480, 250, 70 );
    fill( 255 );
    textFont( fuente[0], 65 );
    text( "Comenzar", 304, 540 ); //botón - - -

    fill( 255 );
    textFont( fuente[0], 65 );
    text( "Vincent Brooks", 325, 100 );

    fill( 255 );
    textFont( fuente[1], 20 );
    text( "Nuestro protagonista: un tipo normal de", 330, 177 );
    text( "32 años. Le tiene miedo al compromiso,", 330, 207 );
    text( "como demuestra cuando su novia desde", 330, 237 );
    text( "hace cinco años empieza a hablar sobre", 330, 267 );
    text( "el matrimonio. De un modo u otro, debe", 330, 297 );
    text( "elegir el camino adecuado para él...", 330, 327 );
 
  }
  

  //- - - HISTORIA - - -

  if ( estado.equals( "historia1" ) ) {
    image(img[3], 0, 0, width, height );

    caja( 100, 430, color( 255 ), "La pareja almuerza en el bar Chrono Rabbit." );
    tecla2( 750, 500, color( 245, 17, 112, 180 ) );
  }

  if ( estado.equals( "historia2" ) ) {   
    image(img[4], 0, 0, width, height );

    caja( 100, 430, color( 255 ), "Katherine" );
    tecla2( 750, 500, color( 245, 17, 112, 180 ) );
  }
  
  if ( estado.equals( "historia3" ) ) {
    image( img[5], 0, 0, width, height );

    caja( 100, 430, color( 255 ), "Vincent" );
    tecla2( 750, 500, color( 245, 17, 112, 180 ) );
  }
  
  if ( estado.equals( "decision1" ) ) {
    image( img[6], 0, 0, width, height );
    
    decision( color( 245, 17, 112 ), "¿Qué hará Vincent Broocks", "Tomá una decisión" );
    textFont( fuente[0], 45 );
    text( "Negarse", 200, 520 );
    text( "Aceptar", 479, 520 );
  } 

  if ( estado.equals( "historia5" ) ) {
    image( img[7], 0, 0, width, height );

    caja( 100, 430, color( 255 ), "Katherine" );
    tecla2( 750, 500, color( 245, 17, 112, 180 ) );
  }

  if ( estado.equals( "historia6" ) ) {
    image( img[8], 0, 0, width, height );

    caja( 100, 430, color( 255 ), "Luego, esa noche nuestro protagonista fue a embriagar en el" );
    tecla2( 750, 500, color( 245, 17, 112, 180 ) );
  }

  if ( estado.equals( "decision2" ) ) {
    image( img[9], 0, 0, width, height );
    decision( color( 245, 17, 112 ), "¿Qué hará Vincent Broocks", "Tomá una decisión" );
    textFont( fuente[0], 45 );
    text( "Ir a casa", 195, 520 );
    text( "Quedarse", 475, 520 );
  } 

  // - - - FINAL 1 - - -

  if ( estado.equals( "F1his1" ) ) {
    image( img[10], 0, 0, width, height );

    caja( 100, 430, color( 255 ), "Vincent" );
    tecla2( 750, 500, color( 245, 17, 112, 180 ) );
  }

  if ( estado.equals( "F1his2" ) ) {
    image( img[11], 0, 0, width, height );

    caja( 100, 430, color( 255 ), "Katherine" );
    tecla2( 750, 500, color( 245, 17, 112, 180 ) );
  }

  if ( estado.equals( "F1his3" ) ) {
    image( img[12], 0, 0, width, height );

    caja( 100, 430, color( 255 ), "Vincent logró despejar todas sus dudas y da el gran paso:" );
    tecla2( 750, 500, color( 245, 17, 112, 180 ) );
  }

  if ( estado.equals( "F1his4" ) ) {
    image( img[13], 0, 0, width, height );

    caja( 100, 430, color( 255 ), "Katherine" );
    credFin( color( 245, 17, 112 ), color( 255 ), "Créditos", "Fin" );
  }

  // - - - FINAL 2 - - -

  if ( estado.equals( "F2his1" ) ) {
    image( img[14], 0, 0, width, height );

    caja( 100, 430, color( 255 ), "De repente, una misteriosa chica sorprende Vincent ya que" );
    tecla2( 750, 500, color( 245, 17, 112, 180 ) );
  }

  if ( estado.equals( "F2his2" ) ) {
    image( img[15], 0, 0, width, height );

    caja( 100, 430, color( 255 ), "Perdido en sus ojos, la hermosa rubia deja enamorado a" );
    tecla2( 750, 500, color( 245, 17, 112, 180 ) );
  }

  if ( estado.equals( "F2his3" ) ) {
    image( img[16], 0, 0, width, height );

    caja( 100, 430, color( 255 ), "Al parecer, ella se adecúa a los gustos y forma de ser de Vins." );
    credFin( color( 245, 17, 112 ), color( 255 ), "Créditos", "Fin" );
  }

  // - - - FINAL 3 - - -

  if ( estado.equals( "F3his1" ) ) {
    image( img[17], 0, 0, width, height );

    caja( 100, 430, color( 255 ), "Al día siguiente, nuestro protagonista despierta pensativo." );
    tecla2( 750, 500, color( 245, 17, 112, 180 ) );
  }

  if ( estado.equals( "F3his2" ) ) {
    image( img[18], 0, 0, width, height );

    caja( 100, 430, color( 255 ), "Hace poco había ganado una apuesta en carrera de caballos" ); 
    tecla2( 750, 500, color( 245, 17, 112, 180 ) );
  }

  if ( estado.equals( "F3his3" ) ) {
    image( img[19], 0, 0, width, height );

    caja( 100, 430, color( 255 ), "Una vez en la estación espacial, Vincent reflexiona..." );
    tecla2( 750, 500, color( 245, 17, 112, 180 ) );
  }

  if ( estado.equals( "F3his4" ) ) {
    image( img[20], 0, 0, width, height );

    caja( 100, 430, color( 255 ), "Vincent"  );
    credFin( color( 245, 17, 112 ), color( 255 ), "Créditos", "Fin" );  
  }

  // - - - CRÉDITOS - - - - - - - - - - - - - - - - - - - - - - - - - 

  if ( estado.equals( "creditos" ) ) {
    image( img[2], 0, 0, width, height );

    fill( 0, 120 );
    noStroke();
    rect( 0, 0, width, height );

    fill( 255 );
    textFont( fuente[0], 50 );
    text( b, 252, 105 );
    text( d, 282, 240 );
    text( f, 334, 380 );
    text( h, 160, 510 );

    fill( 255 );
    textFont( fuente[1], 30 );
    text( a, 355, 50 );
    text( c, 288, 150 );
    text( e, 250, 290 );
    text( g, 295, 430 );
    text( i, 294, 560 );

    fill( 245, 17, 112 );
    stroke( 0, 30 );
    strokeWeight( 5 );
    rect( 675, 25, 100, 48 );
    fill( 255 );
    textFont( fuente[0], 45 );
    text( "Salir", 685, 66 );
  }

  // - - - PRUEBA DE SONIDO POR PANTALLA - - - - - - - - - - - - - - -

  if ( estado.equals( "pantalla inicio" ) || estado.equals( "guia" ) ) {
    muFondo.play();
  } else {
    muFondo.pause();
    muFondo.rewind();
  }
  if ( estado.equals( "vincent" ) ) {
    muPresnt.play();
  } else {
    muPresnt.pause();
    muPresnt.rewind();
  }
  if ( estado.equals( "historia1" ) || estado.equals( "historia2" ) || estado.equals( "historia3" ) || estado.equals( "decision1" ) || estado.equals( "historia5" ) ) {
    mu3.play();
  } else {
    mu3.pause();
    mu3.rewind();
  }
  if ( estado.equals( "historia6" ) || estado.equals( "decision2" ) || estado.equals( "F2his1" ) || estado.equals( "F2his2" ) ) {
    mu5.play();
  } else {
    mu5.pause();
    mu5.rewind();
  }
  if ( estado.equals( "creditos" ) ) {
    mu6.play();
  } else {
    mu6.pause();
    mu6.rewind();
  }
  if ( estado.equals( "F2his3" ) ) {
    mu4.play();
  } else {
    mu4.pause();
    mu4.rewind();
  }
  if ( estado.equals( "F1his1" ) || estado.equals( "F1his2" ) || estado.equals( "F1his3" ) || estado.equals( "F1his4" ) ) {
    mu7.play();
  } else {
    mu7.pause();
    mu7.rewind();
  }
  if ( estado.equals( "F3his1" ) || estado.equals( "F3his2" ) ) {
    mu8.play();
  } else {
    mu8.pause();
    mu8.rewind();
  }
  if ( estado.equals( "F3his3" ) || estado.equals( "F3his4" ) ) {
    mu9.play();
  } else {
    mu9.pause();
    mu9.rewind();
  }
}

// - - - CAMBIOS DE PANTALLA CON EL TECLADO - - - - - - - - - - - - -

void keyPressed() {

  //- - - TECLAS ATRÁS O SIGUIENTE - - -
  if ( estado.equals( "pantalla inicio" ) ) {
    pantIn( ' ', "guia" );
  
  } else if ( estado.equals( "historia1" ) ) {
    cambPant( RIGHT, "historia2" );
  
  } else if ( estado.equals( "historia2" ) ) {
    cambPant( RIGHT, "historia3" );
    
  } else if ( estado.equals( "historia3" ) ) {
    cambPant( RIGHT, "decision1" );
    
  } else if ( estado.equals( "historia5" ) ) {
    cambPant( RIGHT, "historia6" );
    
  } else if ( estado.equals( "historia6" ) ) {
    cambPant( RIGHT, "decision2" );
    
  } else if ( estado.equals( "F1his1" ) ) {
    cambPant( RIGHT, "F1his2" );
    
  } else if ( estado.equals( "F1his2" ) ) {
    cambPant( RIGHT, "F1his3" );
    
  } else if ( estado.equals( "F1his3" ) ) {
    cambPant( RIGHT, "F1his4" );
    
  } else if ( estado.equals( "F2his1" ) ) {
    cambPant( RIGHT, "F2his2" );
    
  } else if ( estado.equals( "F2his2" ) ) {
    cambPant( RIGHT, "F2his3" );
    
  } else if ( estado.equals( "F3his1" ) ) {
    cambPant( RIGHT, "F3his2" );
    
  } else if ( estado.equals( "F3his2" ) ) {
    cambPant( RIGHT, "F3his3" );
    
  } else if ( estado.equals( "F3his3" ) ) {
    cambPant( RIGHT, "F3his4" );
  }
}


// - - - BOTONES / CLICK MOUSE - - - - - - - - - - - - - - - - - - - -

void mousePressed() {

  if ( estado.equals( "guia" ) ) {
    if ( mouseX > 625 && mouseX < 625+150 && mouseY > 535 && mouseY < 535+45 ) {
      estado = "vincent";
    }
  }
  if ( estado.equals( "vincent" ) ) {
    if ( mouseX > 275 && mouseX < 275+250 && mouseY > 480 && mouseY < 480+70 ) {
      estado = "historia1";
    }
  }
  if ( estado.equals( "decision1" ) ) {
    botonN( "historia5");
  
  if ( estado.equals( "decision1" ) ) {
    botonA( "F1his1" );
    }
  }
  if ( estado.equals( "F1his4" ) || estado.equals( "F2his3" ) || estado.equals( "F3his4" ) ) {
    if ( mouseX > 625 && mouseX < 625+150 && mouseY > 25 && mouseY < 25+45 ) {
      estado = "creditos";
    }
  } else if ( estado.equals( "creditos" ) ) {
    if ( mouseX > 675 && mouseX < 675+100 && mouseY > 25 && mouseY < 25+48 ) {
      estado = "pantalla inicio";
    }
  }
  if ( estado.equals( "decision2" ) ) {
    botonN( "F3his1" );
    
  if ( estado.equals( "decision2" ) ) {
    botonA( "F2his1" );
    }
  }
}
