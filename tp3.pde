// TP3 - - - AVENTURA GRÁFICA: CATHERINE - - - ALEXIS DIEGO AVALO - - - TECNO1 2020 - - -

import ddf.minim.*;

Minim musica;
AudioPlayer muFondo, muPresnt, mu3, mu4, mu5, mu6, mu7;

PFont fuente1, fuente2;
PImage inicio, logo, V, h1, h2, h3, h4, h5, h6, h7, h8, f1a, f1b, f1c, f1d, f2a;

String estado;

String a = "UNLP";
String b = "Facultad de Artes";
String c = "TECNO 1";

String d = "REALIZADO POR";
String e = "Alexis Diego Avalos";

String f = "MÚSICA";
String g = "Shoji Meguro";

String h = "BASADO EN LA OBRA ORIGINAL DE";
String i = "Atlus Co., Ltd";

float subida = 350;

void setup(){
  size( 800, 600 );
  
// - - - CARGO AUDIO, IMÁGENES Y FUENTE - - - - - - - - - - - - - - - 
  
  musica =  new Minim(this);
  muFondo = musica.loadFile( "soundInicio.mp3" );
  muPresnt = musica.loadFile( "soundPresnt.mp3" );
  mu3 = musica.loadFile( "sound3.mp3" );
  mu4 = musica.loadFile( "sound4.mp3" );
  mu5 = musica.loadFile( "sound5.mp3" );
  mu6 = musica.loadFile( "sound6.mp3" );
  mu7 = musica.loadFile( "sound7.mp3" );
  muFondo.setGain( -10 );
  muPresnt.setGain( -10 );
  mu3.setGain( -10 );
  mu4.setGain(-10 );
  mu5.setGain( -10 );
  mu6.setGain( -10 );
  mu7.setGain( -10 );
  muFondo.loop();
  
  estado = "pantalla inicio";
  
  fuente1 = createFont( "Catherine.otf", 200);
  fuente2 = createFont( "PlutoRegular.ttf", 200 );
  
  inicio = loadImage( "background heart.jpg");
  logo = loadImage( "logo.png" );
  V = loadImage( "vincent.png" );
  h1 = loadImage( "historia1.jpg" );
  h2 = loadImage( "historia2.jpg" );
  h3 = loadImage( "historia3.jpg" );
  h4 = loadImage( "historia4.jpg" );
  h5 = loadImage( "historia5.jpg" );
  h6 = loadImage( "historia6.jpg" );
  h7 = loadImage( "historia7.jpg" );
  h8 = loadImage( "historia8.jpg" );
  f1a = loadImage( "f1h1.jpg" );
  f1b = loadImage( "f1h2.jpg" );
  f1c = loadImage( "f1h3.jpg" );
  f1d = loadImage( "f1h4.jpg" );
  f2a = loadImage( "f2h1.jpg" );

}


void draw(){

// - - - DIBUJO LAS PANTALLAS - - - - - - - - - - - - - - - - - - - 
 
 // - - - PANTALLA INICIO - - -
 if( estado.equals( "pantalla inicio" ) ){
  image( inicio, 0, 0, 800, 600 );
  
  // - - - GUÍA - - -
  fill( 0, 180 );
  stroke( 214, 35, 100, 180 );
  strokeWeight( 5 );
  rect( 10, 10, 240, 80 );
  fill( 214, 35, 100, 180 );
  stroke( 0, 0, 0, 30 );
  strokeWeight(7);
  ellipse( 40, 35, 27, 27 );
  fill( 255 );
  textFont( fuente2, 20 );
  text( "TECLADO", 71, 42 );
  
  fill( 214, 35, 100, 180 );
  stroke( 0, 0, 0, 30 );
  strokeWeight(7);
  rect( 20, 55, 42, 25 );
  fill( 255 );
  textFont( fuente2, 20 );
  text( "'CLICK' MOUSE", 71, 74 );
  
  fill( 0, 180 );
  noStroke();
  ellipse( 400, 200, 280, 280);
  image( logo, 135, -10, 550, 500);
  
  fill( 214, 35, 100, 180 );
  stroke( 0, 0, 0, 30 );
  strokeWeight(7);
  ellipse( 400, 520, 437, 85 );
  fill( 255 );
  textFont( fuente1, 65 );
  text( "~Presioná Space~", 218, 540 ); //tecla - - -
 }

 // - - - PRESENTACIÓN VINCENT - - -
 if( estado.equals( "vincent" ) ){
  image( inicio, 0, 0, 800, 600 );
  
  fill( 0, 120 );
  noStroke();
  rect( 0, 0, 800, 600 );
  image( V, 55, 5, 250, 590 );
  
  fill( 0, 180 );
  stroke( 214, 35, 100, 180 );
  strokeWeight( 5 );
  rect( 325, 150, 425, 270 );
  
  fill( 214, 35, 100 );
  stroke( 0, 0, 0, 30 );
  strokeWeight(7);
  rect( 275, 480, 250, 70 );
  fill( 255 );
  textFont( fuente1, 65 );
  text( "Comenzar", 304, 540 ); //botón - - -
  
  fill( 255 );
  textFont( fuente1, 75 );
  text( "Vincent Brooks", 325, 140 );
  
  fill( 255 );
  textFont( fuente2, 22 );
  text( "Nuestro protagonista: un tipo", 337, 177 );
  text( "normal de 32 años. Le tiene miedo", 337, 207 );
  text( "al compromiso, como demuestra", 337, 237 );
  text( "cuando su novia desde hace cinco", 337, 267 );
  text( "años empieza a hablar de", 337, 297 );
  text( "matrimonio. De un modo u otro,", 337, 327 );
  text( "debe elegir el camino adecuado", 337, 357 );
  text( "para él...", 337, 387 );
  
 }
 
 //- - - HISTORIA - - -
 if( estado.equals( "historia1" ) ){
   image( h1, 0, 0, 800, 600 );
   fill( 0, 180 );
   rect( 100, 400, 600, 150);
   
   fill( 214, 35, 100, 180 );
   stroke( 0, 0, 0, 30 );
   strokeWeight(7);
   ellipse( 50, 300, 65, 65 );
   fill( 255 );
   textFont( fuente2, 55 );
   text( "A", 30, 317 ); //tecla - - -
   
   fill( 214, 35, 100, 180 );
   stroke( 0, 0, 0, 30 );
   strokeWeight(7);
   ellipse( 750, 300, 65, 65 );
   fill( 255 );
   textFont( fuente2, 55 );
   text( "S", 732, 318 ); //tecla - - -
   
   fill( 255 );
   textFont( fuente2, 22 );
   text( "La pareja almuerza en un bar.", 110, 430 );
   text( "Vincent queda desconcertado ante la idea de Kat", 110, 460 );
   text( "de casarse. Él no se esperaba la 'pronta' idea.", 110, 490 );
 }

 if( estado.equals( "historia2" ) ){
  image( h2, 0, 0, 800, 600 );
  fill( 0, 180 );
   rect( 100, 400, 600, 150);
   
   fill( 214, 35, 100, 180 );
   stroke( 0, 0, 0, 30 );
   strokeWeight(7);
   ellipse( 50, 300, 65, 65 );
   fill( 255 );
   textFont( fuente2, 55 );
   text( "A", 30, 317 ); //tecla - - -
   
   fill( 214, 35, 100, 180 );
   stroke( 0, 0, 0, 30 );
   strokeWeight(7);
   ellipse( 750, 300, 65, 65 );
   fill( 255 );
   textFont( fuente2, 55 );
   text( "D", 730, 317 ); //tecla - - -
   
   fill( 255 );
   textFont( fuente1, 65 );
   text( "Katherine", 110, 400 );
   textFont( fuente2, 22 );
   text( "Vincent, llevamos más de 5 años de novios, creo", 110, 430 );
   text( "que va siendo hora de formar una familia..*(susp)*", 110, 460 );
   text( "Además, mis padres están preocupados.", 110, 490 );
}
 if( estado.equals( "historia3" ) ){
  image( h3, 0, 0, 800, 600 );
  fill( 0, 180 );
   rect( 100, 400, 600, 150);
   
   fill( 214, 35, 100, 180 );
   stroke( 0, 0, 0, 30 );
   strokeWeight(7);
   ellipse( 50, 300, 65, 65 );
   fill( 255 );
   textFont( fuente2, 55 );
   text( "A", 30, 317 ); //tecla - - -
   
   fill( 214, 35, 100, 180 );
   stroke( 0, 0, 0, 30 );
   strokeWeight(7);
   ellipse( 750, 300, 65, 65 );
   fill( 255 );
   textFont( fuente2, 55 );
   text( "F", 730, 317 ); //tecla - - -
   
   fill( 255 );
   textFont( fuente1, 65 );
   text( "Vincent", 110, 400 );
   textFont( fuente2, 22 );
   text( "¡Estamos bien así! Digo, no hay porque forzar", 110, 430 );
   text( "un casamiento.. Eh, no digo que no te quiera...", 110, 460 );
   text( "Yo te amo, Kat y...", 110, 490 );
 }
 if( estado.equals( "historia4" ) ){
  image( h4, 0, 0, 800, 600 );
   fill( 0, 100 );
   rect( 0, 0, 800, 600);
   
   fill( 214, 35, 100, 180 );
   stroke( 0, 0, 0, 30 );
   strokeWeight(7);
   ellipse( 50, 300, 65, 65 );
   fill( 255 );
   textFont( fuente2, 55 );
   text( "A", 30, 317 ); //tecla - - -
   
   fill( 0, 180 );
   rect( 0, 40, 450, 70);
   
   fill( 214, 35, 100 );
   stroke( 0, 0, 0, 30 );
   strokeWeight(7);
   rect( 300, 480, 200, 70 );
   
   fill( 214, 35, 100 );
   stroke( 0, 0, 0, 30 );
   strokeWeight(7);
   rect( 575, 260, 200, 70 );
   
   fill( 255 );
   textFont( fuente1, 65 );
   text( "Tomá una decisión", 50, 100 );
   text( "Negarse", 310, 540 );
   text( "Aceptar", 590, 320 );
 }
 if( estado.equals( "historia5" ) ){
  image( h5, 0, 0, 800, 600 );
  fill( 0, 180 );
   rect( 100, 400, 600, 150);
   
   fill( 214, 35, 100, 180 );
   stroke( 0, 0, 0, 30 );
   strokeWeight(7);
   ellipse( 50, 300, 65, 65 );
   fill( 255 );
   textFont( fuente2, 55 );
   text( "A", 30, 317 ); //tecla - - -
   
   fill( 214, 35, 100, 180 );
   stroke( 0, 0, 0, 30 );
   strokeWeight(7);
   ellipse( 750, 300, 65, 65 );
   fill( 255 );
   textFont( fuente2, 55 );
   text( "K", 730, 317 ); //tecla - - -
   
   fill( 255 );
   textFont( fuente1, 65 );
   text( "Katherine", 110, 400 );
   textFont( fuente2, 22 );
   text( "Está bien, Vincent...*(susp)*", 110, 430 );
   text( "Veo que aún sigues sin madurar yo no quiero", 110, 460 );
   text( "seguir así como estamos. Creo que... Lo mejor es", 110, 490 );
   text( "que nos tomemos un tiempo.", 110, 520 );
 }
 
  if( estado.equals( "historia6" ) ){
  image( h6, 0, 0, 800, 600 );
  fill( 0, 180 );
   rect( 100, 400, 600, 150);
   
   fill( 214, 35, 100, 180 );
   stroke( 0, 0, 0, 30 );
   strokeWeight(7);
   ellipse( 50, 300, 65, 65 );
   fill( 255 );
   textFont( fuente2, 55 );
   text( "A", 30, 317 ); //tecla - - -
   
   fill( 214, 35, 100, 180 );
   stroke( 0, 0, 0, 30 );
   strokeWeight(7);
   ellipse( 750, 300, 65, 65 );
   fill( 255 );
   textFont( fuente2, 55 );
   text( "L", 734, 317 ); //tecla - - -
   
   textFont( fuente2, 22 );
   text( "Esa noche nuestro protagonista fue a embriagar", 110, 430 );
   text( "en el bar Stray Sheep. Así se olvidaría de que", 110, 460 );
   text( "Katherine lo dejó... Él no lo esperaba así.", 110, 490 );
  }
  if( estado.equals( "historia7" ) ){
  image( h7, 0, 0, 800, 600 );
  fill( 0, 180 );
   rect( 100, 400, 600, 150);
   
   fill( 214, 35, 100, 180 );
   stroke( 0, 0, 0, 30 );
   strokeWeight(7);
   ellipse( 50, 300, 65, 65 );
   fill( 255 );
   textFont( fuente2, 55 );
   text( "A", 30, 317 ); //tecla - - -
   
   fill( 214, 35, 100, 180 );
   stroke( 0, 0, 0, 30 );
   strokeWeight(7);
   ellipse( 750, 300, 65, 65 );
   fill( 255 );
   textFont( fuente2, 55 );
   text( "Q", 725, 317 ); //tecla - - -
   
   textFont( fuente2, 22 );
   text( "De repente, aparece una misteriosa chica de", 110, 430 );
   text( "la cual Vincent queda perdido en sus ojos... ", 110, 460 );
  }
  if( estado.equals( "historia8" ) ){
  image( h8, 0, 0, 800, 600 );
  fill( 0, 180 );
   rect( 100, 400, 600, 150);
   
   fill( 214, 35, 100, 180 );
   stroke( 0, 0, 0, 30 );
   strokeWeight(7);
   ellipse( 50, 300, 65, 65 );
   fill( 255 );
   textFont( fuente2, 55 );
   text( "A", 30, 317 ); //tecla - - -
   
   fill( 214, 35, 100, 180 );
   stroke( 0, 0, 0, 30 );
   strokeWeight(7);
   ellipse( 750, 300, 65, 65 );
   fill( 255 );
   textFont( fuente2, 55 );
   text( "W", 720, 320 ); //tecla - - -
   
   textFont( fuente2, 22 );
   text( "La hermosa rubia dejó enamorado a Vincent.", 110, 430 );
   text( "Y luego de unos tragos, deciden hacer algo más", 110, 460 );
   text( "que solo charlar...", 110, 490 );
  }
   
  // - - - FINAL 1 - - -
  if( estado.equals( "F1his1" ) ){
  image( f1a, 0, 0, 800, 600 );
  fill( 0, 180 );
   rect( 100, 400, 600, 150);
   
   fill( 214, 35, 100, 180 );
   stroke( 0, 0, 0, 30 );
   strokeWeight(7);
   ellipse( 50, 300, 65, 65 );
   fill( 255 );
   textFont( fuente2, 55 );
   text( "A", 30, 317 ); //tecla - - -
   
   fill( 214, 35, 100, 180 );
   stroke( 0, 0, 0, 30 );
   strokeWeight(7);
   ellipse( 750, 300, 65, 65 );
   fill( 255 );
   textFont( fuente2, 55 );
   text( "G", 728, 317 ); //tecla - - -
   
   fill( 255 );
   textFont( fuente1, 65 );
   text( "Vincent", 110, 400 );
   textFont( fuente2, 22 );
   text( "Mmm... Ok, pensandolo bien puede que ya sea", 110, 430 );
   text( "hora de dar el siguiente paso...", 110, 460 );
   text( "¡Acepto! Casemonos, Katherine.", 110, 490 );
   }
   
  if( estado.equals( "F1his2" ) ){
  image( f1b, 0, 0, 800, 600 );
  fill( 0, 180 );
   rect( 100, 400, 600, 150);
   
   fill( 214, 35, 100, 180 );
   stroke( 0, 0, 0, 30 );
   strokeWeight(7);
   ellipse( 50, 300, 65, 65 );
   fill( 255 );
   textFont( fuente2, 55 );
   text( "A", 30, 317 ); //tecla - - -
   
   fill( 214, 35, 100, 180 );
   stroke( 0, 0, 0, 30 );
   strokeWeight(7);
   ellipse( 750, 300, 65, 65 );
   fill( 255 );
   textFont( fuente2, 55 );
   text( "H", 728, 317 ); //tecla - - -
   
   fill( 255 );
   textFont( fuente1, 65 );
   text( "Katherine", 110, 400 );
   textFont( fuente2, 22 );
   text( "*(sonrisa)*", 110, 430 );
  }
  
  if( estado.equals( "F1his3" ) ){
  image( f1c, 0, 0, 800, 600 );
  fill( 0, 180 );
   rect( 100, 400, 600, 150);
   
   fill( 214, 35, 100, 180 );
   stroke( 0, 0, 0, 30 );
   strokeWeight(7);
   ellipse( 50, 300, 65, 65 );
   fill( 255 );
   textFont( fuente2, 55 );
   text( "A", 30, 317 ); //tecla - - -
   
   fill( 214, 35, 100, 180 );
   stroke( 0, 0, 0, 30 );
   strokeWeight(7);
   ellipse( 750, 300, 65, 65 );
   fill( 255 );
   textFont( fuente2, 55 );
   text( "J", 730, 317 ); //tecla - - -
   
   fill( 255 );
   textFont( fuente2, 22 );
   //text( "*(sonrisa)*", 110, 430 );
   text( "Vincent logró despejar todas sus dudas y da el", 110, 430 );
   text( "gran paso: casarse con el amor de toda su vida:", 110, 460 );
   text( "Katherine. Junto a sus amigos, celebran su", 110, 490 );
   text( "matrimonio.", 110, 520 );
  }
  
  if( estado.equals( "F1his4" ) ){
  image( f1d, 0, 0, 800, 600 );
  fill( 0, 180 );
   rect( 100, 400, 600, 150);
   
   fill( 214, 35, 100, 180 );
   stroke( 0, 0, 0, 30 );
   strokeWeight(7);
   ellipse( 50, 300, 65, 65 );
   fill( 255 );
   textFont( fuente2, 55 );
   text( "A", 30, 317 ); //tecla - - -
   
   fill( 214, 35, 100 );
   stroke( 0, 0, 0, 30 );
   strokeWeight(7);
   rect( 575, 260, 200, 70 );
   
   fill( 255 );
   textFont( fuente1, 65 );
   text( "Katherine", 110, 400 );
   text( "Créditos", 599, 320 );
   text( "Fin.", 600, 540 );
   textFont( fuente2, 22 );
   text( "*susurro* Te amo tanto, Vincent...", 110, 430 );
   }
  
   // - - - FINAL 2 - - -
   if( estado.equals( "F2his1" ) ){
  image( f2a, 0, 0, 800, 600 );
  fill( 0, 180 );
   rect( 100, 400, 600, 150);
   
   fill( 214, 35, 100, 180 );
   stroke( 0, 0, 0, 30 );
   strokeWeight(7);
   ellipse( 50, 300, 65, 65 );
   fill( 255 );
   textFont( fuente2, 55 );
   text( "A", 30, 317 ); //tecla - - -
   
   fill( 214, 35, 100 );
   stroke( 0, 0, 0, 30 );
   strokeWeight(7);
   rect( 575, 260, 200, 70 );
   fill( 255 );
   textFont( fuente1, 65 );
   text( "Créditos", 599, 320 );
   text( "Fin.", 600, 540 );
   
   textFont( fuente2, 22 );
   text( "Al parecer, ella se adecúa a los gustos y", 110, 430 );
   text( "forma de ser de nuestro protagonista. Digamos", 110, 460 );
   text( "que él ya encontró su consuelo. Ah! el", 110, 490 );
   text( "nombre de esta chica es... Catherine.", 110, 520 );
   }
   
// - - - CRÉDITOS - - - - - - - - - - - - - - - - - - - - - - - - - 
  if( estado.equals( "creditos" ) ){
   image( inicio, 0, 0, 800, 600 );
  
   fill( 0, 120 );
   noStroke();
   rect( 0, 0, 800, 600 );
  
   textFont( fuente2, 30 );
   fill( 255 ); 
   text( a, 105, subida+135*3);
   text( b, 105, subida+155*3);
   text( c, 105, subida+175*3);
   
   text( d, 105, subida+215*3);
   text( e, 105, subida+235*3);
   
   text( f, 105, subida+275*3);
   text( g, 105, subida+295*3);
   
   text( h, 105, subida+335*3);
   text( i, 105, subida+355*3);
   
   fill( 214, 35, 100 );
   stroke( 0, 0, 0, 30 );
   strokeWeight(7);
   rect( 700, 528, 90, 60 );
   fill( 255 );
   textFont( fuente1, 40 );
   text( "Salir", 710, 569 );
   
   subida -= 2;
   println( subida );
  }

// - - - PRUEBA DE SONIDO POR PANTALLA - - - - - - - - - - - - - - -
 
 if( estado.equals( "pantalla inicio" ) ) {
   muFondo.play();
  
 }else{
  muFondo.pause(); 
}
 if( estado.equals( "vincent" ) ){
  muPresnt.play();
}
 else{
 muPresnt.pause();
}
if( estado.equals( "historia1" ) || estado.equals( "historia2" ) || estado.equals( "historia3" ) || estado.equals( "historia4" ) || estado.equals( "historia5" ) ) {
   mu3.play();
  
 }else{
  mu3.pause(); 
 }
 if( estado.equals( "historia6" ) || estado.equals( "historia7" ) || estado.equals( "historia8" ) ) {
   mu5.play();
  
 }else{
  mu5.pause(); 
}
if( estado.equals( "creditos" ) ) {
   mu6.play();
  
 }else{
  mu6.pause();
 }
 if( estado.equals( "F2his1" ) ) {
   mu4.play();
  
 }else{
  mu4.pause(); 
}
if( estado.equals( "F1his1" ) || estado.equals( "F1his2" ) || estado.equals( "F1his3" ) || estado.equals( "F1his4" ) ) {
   mu7.play();
  
 }else{
  mu7.pause(); 
}
}
  
// - - - CAMBIOS DE PANTALLA CON EL TECLADO - - - - - - - - - - - - -

void keyPressed(){
  
 //- - - VOLVER ATRÁS o SIGUIENTE - - -
 if( estado.equals( "pantalla inicio" ) ){
  if( key == ' ' ){
   estado = "vincent";
    }
  }
  if( estado.equals( "historia1" ) ){
    if( key == 'a' ){
      estado = "vincent";
    }
  }
  
if( estado.equals( "historia1" ) ){
    if( key == 's' ){
      estado = "historia2";
    }
  }
  if( estado.equals( "historia2" ) ){
    if( key == 'a' ){
      estado = "historia1";
    }
  }
  if( estado.equals( "historia2" ) ){
    if( key == 'd' ){
      estado = "historia3";
    }
  }
  if( estado.equals( "historia3" ) ){
    if( key == 'a' ){
      estado = "historia2";
    }
  }
  if( estado.equals( "historia3" ) ){
    if( key == 'f' ){
      estado = "historia4";
   }
  }
   if( estado.equals( "historia4" ) ){
   if( key == 'a' ){
    estado = "historia3"; 
   }
 }
   if( estado.equals( "historia5" ) ){
   if( key == 'a' ){
    estado = "historia4"; 
   }
 }
  if( estado.equals( "historia5" ) ){
  if( key == 'k' ){
   estado = "historia6"; 
   }
 }
  if( estado.equals( "historia6" ) ){
  if( key == 'a' ){
   estado = "historia5"; 
   }
 }
  if( estado.equals( "historia6" ) ){
  if( key == 'l' ){
   estado = "historia7"; 
   }
 }
 if( estado.equals( "historia7" ) ){
  if( key == 'a' ){
   estado = "historia6"; 
   }
 }
  if( estado.equals( "historia7" ) ){
  if( key == 'q' ){
   estado = "historia8"; 
   }
 }
  if( estado.equals( "historia8" ) ){
  if( key == 'a' ){
   estado = "historia7"; 
   }
 }
 if( estado.equals( "historia8" ) ){
  if( key == 'w' ){
   estado = "F2his1"; 
   }
 }
  if( estado.equals( "F1his1" ) ){
  if( key == 'a' ){
   estado = "historia4";
 }
}
 if( estado.equals( "F1his1" ) ){
 if( key == 'g' ){
  estado = "F1his2";
  }
 }
 if( estado.equals( "F1his2" ) ){
 if( key == 'a' ){
  estado = "F1his1";
  }
 }
 if( estado.equals( "F1his2" ) ){
 if( key == 'h' ){
  estado = "F1his3";
  }
 }
 if( estado.equals( "F1his3" ) ){
 if( key == 'a' ){
  estado = "F1his2";
  }
 }
 if( estado.equals( "F1his3" ) ){
 if( key == 'j' ){
  estado = "F1his4";
  }
 }
 if( estado.equals( "F1his4" ) ){
 if( key == 'a' ){
  estado = "F1his3";
  }
 }
 if( estado.equals( "F2his1" ) ){
 if( key == 'a' ){
  estado = "historia8";
  }
 }
} 


// - - - CAMBIOS CON EL MOUSE - - - - - - - - - - - - - - - - - - - -

void mousePressed(){
  if( estado.equals( "vincent" ) ){
    if( mouseX > 275 && mouseX < 275+250 && mouseY > 480 && mouseY < 480+70 ){
      estado = "historia1";
    }
  }
  if( estado.equals( "historia4" ) ){
    if( mouseX > 300 && mouseX < 300+200 && mouseY > 480 && mouseY < 480+70 ){
      estado = "historia5";
    }
  }
  if( estado.equals( "historia4" ) ){
    if( mouseX > 575 && mouseX < 575+200 && mouseY > 260 && mouseY < 260+70 ){
      estado = "F1his1";
    }
  }
  if( estado.equals( "F1his4" ) || estado.equals( "F2his1" ) ){
    if( mouseX > 575 && mouseX < 575+200 && mouseY > 260 && mouseY < 260+70 ){
      estado = "creditos";
   }
  }
  if( estado.equals( "creditos" ) ){
    if( mouseX > 700 && mouseX < 700+90 && mouseY > 528 && mouseY < 528+60 ){
      estado = "pantalla inicio";
    }
  }
  
}
